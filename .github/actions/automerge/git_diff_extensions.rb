require "git_diff"

module GitDiffExtension
  refine GitDiff::Diff do
    def simple?
      single_cask? && only_version_or_checksum?
    end

    def single_cask?
      return false unless files.count == 1
      file = files.first
      return false unless file.a_path == file.b_path
      file.a_path.match?(%r{\ACasks/[^/]+\.rb\Z})
    end

    def only_version_or_checksum?
      lines = files.flat_map(&:hunks).flat_map(&:lines)

      additions = lines.select(&:addition?)
      deletions = lines.select(&:deletion?)
      changed_lines = deletions + additions

      return false if additions.count != deletions.count
      return false if additions.count > 2

      changed_lines.all? { |line| line.version? || line.sha256? }
    end
  end

  refine GitDiff::Line::Context do
    def version?
      to_s.match?(/\A[+-]\s*version '[^']+'\Z/)
    end

    def sha256?
      to_s.match?(/\A[+-]\s*sha256 '[0-9a-f]{64}'\Z/)
    end
  end
end

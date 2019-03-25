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
      return false if additions.count != deletions.count
      return false if additions.count > 2

      (additions + deletions).all? { |line| line.version? || line.sha256? }
    end

    def version_changed?
      old_version != new_version
    end

    def version_decreased?
      return false unless version_changed?
      new_version.split(',').zip(old_version.split(','))
        .any? { |v_new, v_old| Version.new(v_new.to_s) < Version.new(v_old.to_s) }
    end

    def old_version
      @old_version ||= deletions.find { |line| line.version? }&.version
    end

    def new_version
      @new_version ||= additions.find { |line| line.version? }&.version
    end

    def lines
      @lines ||= files.flat_map(&:hunks).flat_map(&:lines)
    end

    def additions
      @additions ||= lines.select(&:addition?)
    end

    def deletions
      @deletions ||= lines.select(&:deletion?)
    end
  end

  refine GitDiff::Line::Context do
    def version?
      !version.nil?
    end

    def version
      to_s[/\A[+-]\s*version '([^']+)'\Z/, 1]
    end

    def sha256?
      to_s.match?(/\A[+-]\s*sha256 '[0-9a-f]{64}'\Z/)
    end
  end
end

cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  version "24.12,9168" # Format: "version,build"
  sha256 "bbff57a3ad6bd028b2ae30b3e2861abd2008d05b853f6a8d0353e3e18818906a"

  url "https://cdn.kde.org/ci-builds/utilities/kate/release-#{version.csv.first}/macos-#{arch}/kate-release_#{version.csv.first}-#{version.csv.second}-macos-clang-#{arch}.dmg", verified: "cdn.kde.org/ci-builds/utilities/kate/"
  name "Kate"
  desc "Multi-document editor by KDE"
  homepage "https://kate-editor.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/utilities/kate/"
    regex(/release-(\d+\.\d+)/i)
    strategy :page_match do |page, regex|
      # First, find the latest version
      version = page.scan(regex).flatten.map { |v| Gem::Version.new(v) }.max&.to_s
      next if version.nil?

      # Then, find the builds for that version
      builds_url = "https://cdn.kde.org/ci-builds/utilities/kate/release-#{version}/macos-#{arch}/"
      builds_page = Homebrew::Livecheck::Strategy.page_content(builds_url)
      next if builds_page[:content].blank?

      build_regex = /kate-release_#{version}-(\d+)-macos-clang-#{arch}\.dmg/i
      build = builds_page[:content].scan(build_regex).flatten.map(&:to_i).max
      next if build.nil?

      "#{version},#{build}"
    end
  end

  app "Kate.app"

  zap trash: [
    "~/Library/Application Support/kate",
    "~/Library/Caches/kate",
    "~/Library/Preferences/org.kde.kate.plist",
    "~/Library/Saved Application State/org.kde.kate.savedState",
  ]
end

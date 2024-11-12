cask "openineditor-lite" do
  version "1.2.6"
  sha256 "d8f9c20b685cfa2b8fe8917ef12986d394712dfc3ba3e421bcd6f394fa1b3206"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.zip"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  # Not every GitHub release provides a `openineditor-lite` file, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^OpenInEditor[._-]Lite\.zip$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "OpenInEditor-Lite.app"

  zap trash: "~/Library/Preferences/wang.jianing.app.OpenInEditor-Lite.plist"
end

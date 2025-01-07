cask "openinterminal-lite" do
  version "1.2.7"
  sha256 "07c558faf0975fd0dca604be2eb793272be91a8f6422f74c8c075ed76775df84"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal-Lite.zip"
  name "OpenInTerminal-Lite"
  desc "Finder Toolbar app to open the current directory in Terminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  # Not every GitHub release provides a `openinterminal-lite` file, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^OpenInTerminal[._-]Lite\.zip$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "OpenInTerminal-Lite.app"

  zap trash: "~/Library/Preferences/wang.jianing.app.OpenInTerminal-Lite.plist"
end

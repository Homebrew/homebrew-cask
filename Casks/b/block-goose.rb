cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.56.0"
  sha256 arm:   "3a9389f0162251c8edf8ce7675cee885e0dc5ee0023487d2e1e34dbff2ecec4c",
         intel: "eeb3239158edd6c5cf489a165bfc6c699814c8e3c24c7ff4afedbf105cea016e"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  # Some releases don't provide assets for Goose Desktop, so we have to check
  # multiple releases to identify the newest version for the desktop app.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Goose#{arch}\.zip}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: :monterey

  app "Goose.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.goose.sfl*",
    "~/Library/Application Support/Goose",
    "~/Library/Preferences/com.electron.goose.plist",
  ]
end

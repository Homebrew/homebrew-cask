cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.59.2"
  sha256 arm:   "08e5d5a96291df59e4e10f19b267e8794414c7549ef03bdd445284704fe506f6",
         intel: "fef3d1546a6999dee04480f00189ecc708bf28bf9871ad4d9f42b214c98d1bde"

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

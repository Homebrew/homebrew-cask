cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.60.0"
  sha256 arm:   "65c5a87e714513f6b93333f6b7e284bae0edb82a624cf1c58a57d0cbd8c5fc7a",
         intel: "ff9e7143802a91bbf186061bb6dfacaad992b158a0cd57f949f38146585244bf"

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

cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.60.1"
  sha256 arm:   "55c9080d37df7816735c16c08e716c2ec0807a0bff7f4326863dfc87651a0094",
         intel: "3c5c0575f61315c68afe704c575b12bc0c37552a2d7c0bb5554d8fdf1affac68"

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

  depends_on macos: :ventura

  app "Goose.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.goose.sfl*",
    "~/Library/Application Support/Goose",
    "~/Library/Preferences/com.electron.goose.plist",
  ]
end

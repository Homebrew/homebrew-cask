cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.40.1"
  sha256 arm:   "9f4855cd84824d2a9a4ec3772306fe2309973e600e4b6009eedb6ec739b8b1bb",
         intel: "51139e61521356e82d03c1cfc846aa0a9edc16b7b1cabf1d24017b83bf8a4be4"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end

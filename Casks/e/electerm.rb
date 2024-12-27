cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.51.8"
  sha256 arm:   "fc8d5fc934be3d24d7674fbc8ae25ae9ee2ef6ea819c01708723645c3e4855fa",
         intel: "01a521a0085c42c1ea92c19b08f0c85a809e6d5efdb2cdd6198cbe4cb3a9b1e6"

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

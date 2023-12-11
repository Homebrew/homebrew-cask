cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.58"
  sha256 arm:   "2eef8c1de153282d635e7d28b7dc5530b99b943752a20e11df40f3aa16e4506d",
         intel: "391c8e2d234727782d574fc9fdc72846ddd2f3d35054d66a5cb96c3537a4cea2"

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

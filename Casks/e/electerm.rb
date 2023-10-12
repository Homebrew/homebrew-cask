cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.20"
  sha256 arm:   "7701f33967c116d20b9ba026b731240b773eca7a05ef777e0f1c4b96fa79a172",
         intel: "e7b7af76f8301e1b309b42b16fbfdf56f89487a23659907dc6b9c72bfba3066d"

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

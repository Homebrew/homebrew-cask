cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.2"
  sha256 arm:   "f02f5702720255785d596bbec904e302d0b04314b41ba09eea9d78bba8d054b2",
         intel: "b228a509d82a8586410a988736e7ef42aa842e996080af4c1fbb28fdb0643ad1"

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

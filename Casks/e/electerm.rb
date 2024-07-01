cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.68"
  sha256 arm:   "6379b28f39f00b1039dcc0ffb90c1fc8f0341249f92a33959e75f68706879152",
         intel: "41a0b75d26cad00bb9407045d0df92e796667aacb23201331ecbc555497dc427"

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

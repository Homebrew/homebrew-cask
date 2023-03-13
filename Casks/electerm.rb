cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.20"
  sha256 arm:   "d3a63ded155d3d68075b911311a942ef9ef9b5ead2452dd8b3c4346a752715d0",
         intel: "daacee82a6f983f996083d31c19dedb104affa4cfa3d2c50238d515e6bc3d088"

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

cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.36"
  sha256 arm:   "511d81b0fb1e8d63f182e375235b81d61832b2c5ea691f1add00f2f5a13cb2a9",
         intel: "7acd751b7ed2f160314b1d9b3babd589dcdf243924e40dfb2ea01e36df237354"

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

cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.14"
  sha256 arm:   "0effad33d81b1de8b3dd2c24bd1f89d882fad89e9a65cb6e813819dc51570150",
         intel: "35e375def03d5fcb0bb9ce946bb96979e910cf847931cb69758f9bad6c417358"

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

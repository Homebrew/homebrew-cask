cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.51.18"
  sha256 arm:   "eaa2d815e7087eca03f2d78641bb5f154c75366e13d999d56f930b38437d86e7",
         intel: "b8754dde1cc931828c536ab4423b0987cad3558b63a2298e11a8383f99d2f3cc"

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

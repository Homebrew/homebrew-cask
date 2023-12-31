cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.106"
  sha256 arm:   "38091c2d1c52a6d94e503a0e5515a648f02cc6b5f15f53ace1fc778eae62a73c",
         intel: "d07b11dccc0aad7239b3a44be9e6cbb0b1291c4d6dce0691cfd1ea3da6a1972d"

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

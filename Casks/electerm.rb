cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.26.1"
  sha256 arm:   "a32aa4ccc84a6eb06c4ddcbcd2baa8b17b23a87b8259f370009c32eed75e1e86",
         intel: "78ded9bb3d4e1e225fe99b627536f3d535aa59184bf856a39a6ff9f19e9a7b5d"

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

cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.60"
  sha256 arm:   "139c9aa43801a7caba236f86e287a736b39f9d8a86b1b1ed1e53f95896be0dbb",
         intel: "3f60b4baa9dbb12e7997f3aae64b8c0be1fc9c6ab5caab5908950771288d815e"

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

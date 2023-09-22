cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.32.46"
  sha256 arm:   "cc89ee7a664e8aaf76c4aa5074277eb58be257e1e9bb00c52fa6d92358ade801",
         intel: "dfeda1ab6b3d3040a94eb8f24fd76f735206cc0e700a685381784f795ab28835"

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

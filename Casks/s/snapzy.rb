cask "snapzy" do
  version "1.32.0"
  sha256 "02706e42aee39969db51aa4fdec805dd0530a3e15509674993494b5928e23e44"

  url "https://github.com/duongductrong/Snapzy/releases/download/v#{version}/Snapzy-v#{version}.dmg"
  name "Snapzy"
  desc "Native screenshots, recording, annotation, and editing from the menu bar"
  homepage "https://snapzy.app/"

  auto_updates true
  depends_on macos: :ventura

  app "Snapzy.app"

  zap trash: [
    "~/.config/snapzy",
    "~/Library/Application Support/Snapzy",
    "~/Library/HTTPStorages/com.trongduong.snapzy",
    "~/Library/Logs/Snapzy",
    "~/Library/Preferences/com.trongduong.snapzy.plist",
  ]
end

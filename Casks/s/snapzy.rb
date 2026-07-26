cask "snapzy" do
  version "1.30.1"
  sha256 "95dd75f492337dc414ad901276c2d23355989bc41c353cf0b8c2977916c220f0"

  url "https://github.com/duongductrong/Snapzy/releases/download/v#{version}/Snapzy-v#{version}.dmg",
      verified: "github.com/duongductrong/Snapzy/"
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

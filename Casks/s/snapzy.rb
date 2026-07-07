cask "snapzy" do
  version "1.29.0"
  sha256 "4d8f92d542351556e0cdaf9bb6e54c6852e9faffd4ba78bfb1043e6abb02b584"

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

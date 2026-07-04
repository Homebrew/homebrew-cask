cask "snapzy" do
  version "1.28.0"
  sha256 "3732ea45f8d60337c088117876aa4d4d83aeee333713125f45f836f035196832"

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

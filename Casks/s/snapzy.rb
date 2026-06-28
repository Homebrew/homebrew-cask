cask "snapzy" do
  version "1.25.2"
  sha256 "49e7d3a74ed23e66eec1a11c42c28b6ef3f7c929e9130490fb4b3586c785b8e4"

  url "https://github.com/duongductrong/Snapzy/releases/download/v#{version}/Snapzy-v#{version}.dmg",
      verified: "github.com/duongductrong/Snapzy/"
  name "Snapzy"
  desc "Native screenshots, recording, annotation, and editing from the menu bar"
  homepage "https://snapzy.app/"

  livecheck do
    url "https://raw.githubusercontent.com/duongductrong/Snapzy/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

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

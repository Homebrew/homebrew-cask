cask "screenmemory" do
  version "2.5.2"
  sha256 "9c95dc660eeeb553568eff534a130de58f82042ec487e8f9101b8f6dc52ec378"

  url "https://f005.backblazeb2.com/file/screenmemory/ScreenMemory.#{version}.dmg",
      verified: "f005.backblazeb2.com/file/screenmemory/"
  name "ScreenMemory"
  desc "Record your screen and go back in time to see what you worked on"
  homepage "https://screenmemory.app/"

  livecheck do
    url "https://f005.backblazeb2.com/file/screenmemory/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "ScreenMemory.app"

  zap trash: [
    "~/Library/HTTPStorages/com.jontelang.screenmemory",
    "~/Library/Preferences/com.jontelang.screenmemory.plist",
  ]
end

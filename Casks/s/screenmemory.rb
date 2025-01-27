cask "screenmemory" do
  version "2.0.5"
  sha256 "94629a523fa9f27740808d983e63e830929f3c00a684415f1a3ff1825ab2989c"

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

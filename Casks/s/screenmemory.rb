cask "screenmemory" do
  version "2.6.3"
  sha256 "02b0f9903f5ac345de363f1582cd49e188a214519f999387fc011b787aaa4c20"

  url "https://f005.backblazeb2.com/file/screenmemory/ScreenMemory.#{version}.dmg",
      verified: "f005.backblazeb2.com/file/screenmemory/"
  name "ScreenMemory"
  desc "Record your screen and go back in time to see what you worked on"
  homepage "https://screenmemory.app/"

  livecheck do
    url "https://f005.backblazeb2.com/file/screenmemory/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  app "ScreenMemory.app"

  zap trash: [
    "~/Library/HTTPStorages/com.jontelang.screenmemory",
    "~/Library/Preferences/com.jontelang.screenmemory.plist",
  ]
end

cask "screenmemory" do
  version "2.1.5"
  sha256 "2c7f7744031d5f45aa13ece067b36fd185e5bfb6da4777609ad22bbaa403b007"

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

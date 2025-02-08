cask "screenmemory" do
  version "2.0.6"
  sha256 "145f2538e8d60c203ac6be889dcf25797520af71ca1015649da5f7cf64df3976"

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

cask "crest" do
  version "6.5.3"
  sha256 "273b9d15f6662dc0599ddb7ea12dc98964731174a2dfb02806f9a8eaae5e1381"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch utility with widgets"
  homepage "https://crestnotch.app/"

  livecheck do
    url "https://crestnotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "crest-browser"
  depends_on macos: :sonoma

  app "Crest.app"

  zap trash: [
    "~/.copilot/hooks/crest.json",
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest.binarycookies",
    "~/Library/Preferences/com.zack40x.crest.plist",
    "~/Library/Preferences/crest.spaces.detached.plist",
    "~/Library/WebKit/com.zack40x.crest",
  ]
end

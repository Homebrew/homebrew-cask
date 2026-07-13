cask "crest" do
  version "4.6.0"
  sha256 "9c4ba286ee6fc0859064969507b551f55d223950cf13bb8032b3fedfdcd877f6"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch panel with media controls, system stats, and a Claude co-pilot"
  homepage "https://crestnotch.app/"

  livecheck do
    url "https://crestnotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Crest.app"

  zap trash: [
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest",
    "~/Library/Preferences/com.zack40x.crest.plist",
    "~/Library/WebKit/com.zack40x.crest",
  ]
end

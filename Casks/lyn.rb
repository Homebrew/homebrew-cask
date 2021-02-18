cask "lyn" do
  version "2.0.5"
  sha256 "33b5c7ce45c5d7de63573a41580ac161f34b5a22a4a256011d514d732d5951a8"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  homepage "https://www.lynapp.com/"

  livecheck do
    url "https://www.lynapp.com/lyn/update#{version.major}x.xml"
    strategy :sparkle
  end

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end

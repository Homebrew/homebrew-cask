cask "flick" do
  version "1.2.0"
  sha256 "a38e215ee3fb489de465847e33f2f22ca165d3e43cc3da2f421e87d21275a8f4"

  url "https://getflick.dev/Flick-#{version}.dmg"
  name "Flick"
  desc "Radial command wheel triggered by holding a key and flicking the mouse"
  homepage "https://getflick.dev/"

  livecheck do
    url "https://getflick.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Flick.app"

  zap trash: [
    "~/Library/Application Support/Flick",
    "~/Library/Caches/dev.getflick.flick",
    "~/Library/HTTPStorages/dev.getflick.flick",
    "~/Library/Preferences/dev.getflick.flick.plist",
  ]
end

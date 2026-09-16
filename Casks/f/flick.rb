cask "flick" do
  version "1.1.0"
  sha256 "d2387d5db352700eb5420aa660834ee0bbebf08e63b0fe5ffee3121643dde8a2"

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

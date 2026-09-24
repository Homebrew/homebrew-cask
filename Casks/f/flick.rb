cask "flick" do
  version "1.1.1"
  sha256 "97b9453435849ceffc2e60afaae14eca40cde49c0e5fddba1079c033ec0fab92"

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

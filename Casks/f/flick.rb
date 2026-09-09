cask "flick" do
  version "1.0.1"
  sha256 "aace17c24548cd758c95eec6ee801c676f64a6e8db73f1ca93285d4523f4e81a"

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

cask "flick" do
  version "1.3.0"
  sha256 "af1a8957cabafc7edb4d71d6afd9b29283d729d80dfde703102af03c506e2e0f"

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

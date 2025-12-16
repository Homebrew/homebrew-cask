cask "bloom" do
  version "1.5.17"
  sha256 "d44edafa2cc9d51e0a2d01ad11e31330d3bf0eadff4dc29d4a54bc3b8456acd8"

  url "https://bloomapp.club/downloads/bloom/Bloom-v#{version}.dmg",
      referer: "https://bloomapp.club"
  name "Bloom"
  desc "File manager"
  homepage "https://bloomapp.club/"

  livecheck do
    url "https://bloomapp.club/downloads/bloom/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Bloom.app"

  zap trash: [
    "~/Library/Containers/com.asiafu.Bloom",
    "~/Library/Preferences/com.asiafu.Bloom.plist",
  ]
end

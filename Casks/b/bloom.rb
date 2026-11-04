cask "bloom" do
  version "1.5.48"
  sha256 "5b4903d1fbb7900cc2949bb8456a6a5b241204d6b044956c00d69ea638f87a28"

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
  depends_on macos: :sonoma

  app "Bloom.app"

  zap trash: [
    "~/Library/Containers/com.asiafu.Bloom",
    "~/Library/Preferences/com.asiafu.Bloom.plist",
  ]
end

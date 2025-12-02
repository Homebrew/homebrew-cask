cask "bloom" do
  version "1.5.13"
  sha256 "878efb2c5414475d9aecbe3a6801130a9ab6321d3840bb990356bc55e779a408"

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

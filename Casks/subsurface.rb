cask "subsurface" do
  version "5.0.9"

  if MacOS.version <= :mojave
    sha256 "b718acc583a986bc36df77b7b076dac0e19f193f6579c55ff802d448cea7c2b3"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "dcf3425fadda38a34001551d4375698b2e8ff34c0de8b7a86d425d2ad3c48e40"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-qt6-universal.dmg"
  end

  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface.github.io/download/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Subsurface.app"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end

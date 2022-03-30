cask "subsurface" do
  version "5.0.8"

  if MacOS.version <= :mojave
    sha256 "b718acc583a986bc36df77b7b076dac0e19f193f6579c55ff802d448cea7c2b3"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  elsif MacOS.version <= :big_sur
    sha256 "8bdce1b52ebf3128c43c09b59f02ff2de7130761448e777d06fb539236f4b862"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.15+11.0.dmg"
  else
    sha256 "8bdce1b52ebf3128c43c09b59f02ff2de7130761448e777d06fb539236f4b862"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  end

  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface.github.io/download/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Subsurface.app"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end

cask "subsurface" do
  version "5.0.6"

  if MacOS.version <= :mojave
    sha256 "d33cc7bd277be1559e67e5bd08d512c0a901430dd2685df278e06fa17c21f3c3"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  elsif MacOS.version <= :big_sur
    sha256 "6fd55c2b58b855fbee001d32ca114271fc5c8a6c0399680860b80df8e40939c6"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.15+11.0.dmg"
  else
    sha256 "6fd55c2b58b855fbee001d32ca114271fc5c8a6c0399680860b80df8e40939c6"
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
end

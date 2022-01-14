cask "subsurface" do
  version "5.0.5"

  if MacOS.version <= :mojave
    sha256 "d33cc7bd277be1559e67e5bd08d512c0a901430dd2685df278e06fa17c21f3c3"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  elsif MacOS.version <= :big_sur
    sha256 "b80919d25d6a998df20064032d7fc06661cbd2aedbf0a024a2357178897f7bf9"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.15+11.0.dmg"
  else
    sha256 "b80919d25d6a998df20064032d7fc06661cbd2aedbf0a024a2357178897f7bf9"
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

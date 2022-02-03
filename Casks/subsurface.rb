cask "subsurface" do
  version "5.0.6"

  if MacOS.version <= :mojave
    sha256 "b718acc583a986bc36df77b7b076dac0e19f193f6579c55ff802d448cea7c2b3"
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

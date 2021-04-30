cask "subsurface" do
  version "5.0.1"

  if MacOS.version <= :mojave
    sha256 "34274051fe008486eccd01b31fcfdc793724276b505438184b35393ffd1199fe"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "2d444c806ce8b3c51fb078e9f87b7b8418c2a9d1b1b3e9a6356ecc8bbd32f2c8"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.15+11.0.dmg"
  end

  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface.github.io/download/"
    strategy :page_match
    regex(%r{href=.*?/Subsurface-(\d+(?:\.\d+)*)-10\.15\+11\.0\.dmg}i)
  end

  app "Subsurface.app"
end

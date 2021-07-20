cask "subsurface" do
  version "5.0.2"

  if MacOS.version <= :mojave
    sha256 "34274051fe008486eccd01b31fcfdc793724276b505438184b35393ffd1199fe"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "9d23dd5a5f0c4f4b2e3cd32ebe2ff2baa10b5d7e5d1cac0887024b7df2adb30b"
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

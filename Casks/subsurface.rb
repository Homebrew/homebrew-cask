cask "subsurface" do
  version "4.9.10"

  if MacOS.version <= :mojave
    sha256 "34274051fe008486eccd01b31fcfdc793724276b505438184b35393ffd1199fe"
    url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-10.13+14.dmg"
  else
    sha256 "32d8ded0a937689183a8d915acab44330cbb26618ff12abc62be5ef42eefd9c4"
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

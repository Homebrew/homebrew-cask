cask "eiskaltdcpp" do
  version "2.4.2"
  sha256 "85b77157892985c0cc0e4c2b9244b4095bf5738f5e94e7a0941551e0c9a7a009"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

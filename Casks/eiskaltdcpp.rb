cask "eiskaltdcpp" do
  version "2.4.1"
  sha256 "7a110fb067a6d657a8ac388253326fd8568742b59055a4822a3405a29c908358"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

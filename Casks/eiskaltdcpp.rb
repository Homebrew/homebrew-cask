cask "eiskaltdcpp" do
  version "2.2.10-710-macOS10.13"
  sha256 "4850c5d703b12a82435ff0d55d5a2de19529ee5cdba900eac09d336ec1c6fd19"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

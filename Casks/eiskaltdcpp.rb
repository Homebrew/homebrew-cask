cask "eiskaltdcpp" do
  version "2.2.10-720-macOS10.13"
  sha256 "332de5b05d1346526fd7a9e4cd9b5795a260a5af9d2ef9e264909aaff2c99e70"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

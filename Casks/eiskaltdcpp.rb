cask "eiskaltdcpp" do
  version "2.4.0"
  sha256 "fdb729eba827efe95f6a56b28f09d908f0c0173a92370bed1777bf92071c8762"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

cask "eiskaltdcpp" do
  version "2.2.10-689-macOS10.13"
  sha256 "b44f0fe56c411a4e158a86077196f7a956cc32b13757368e82be6d0658d93749"

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/eiskaltdcpp/rss"
  name "EiskaltDC++"
  homepage "https://sourceforge.net/projects/eiskaltdcpp/"

  app "EiskaltDC++.app"
end

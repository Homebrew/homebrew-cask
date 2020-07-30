cask "epichrome" do
  version "2.3.6"
  sha256 "8db66bb2672c3eec1cb308eaa1b1ca2cfba9092a25add8d9aa102ecf64a141d5"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end

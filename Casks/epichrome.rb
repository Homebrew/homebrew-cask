cask "epichrome" do
  version "2.3.8"
  sha256 "269789118bed17446f2d9e522cebc37a25eeeaee1d15155eb5b11279d89a68ec"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end

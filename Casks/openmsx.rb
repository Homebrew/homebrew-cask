cask "openmsx" do
  version "16.0"
  sha256 "e73f053476546c667787528b3069e4e8ae83bd3299c4fe23fd062ee7abecad91"

  # github.com/openMSX/openMSX/ was verified as official when first introduced to the cask
  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg"
  appcast "https://github.com/openMSX/openMSX/releases.atom"
  name "openMSX"
  homepage "https://openmsx.org/"

  app "openMSX.app"
end

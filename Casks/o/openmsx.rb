cask "openmsx" do
  version "19_0"
  sha256 "f247b515a0dd9864906044fac564d04cbcf6345167cd0275117bbf859fbd36ab"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version}/openmsx-#{version.underscores_to_dots}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  app "openMSX.app"
end

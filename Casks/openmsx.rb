cask "openmsx" do
  version "16.0"
  sha256 "a47c37342a4ef5abe8fc63e9265dda0359aad9b076acf56a783e831b581be010"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  app "openMSX.app"
end

cask "openmsx" do
  version "17.0"
  sha256 "e4628de0b547d3422c1e3ee77918e133528039b96836d70e7cd2f1c1c8131691"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  app "openMSX.app"
end

cask "openmsx" do
  version "18_0"
  sha256 "51e0887a8515fa50a880485a5b343783cf8928ea3d7909733956b90df4b0ded4"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version}/openmsx-#{version.underscores_to_dots}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  app "openMSX.app"
end

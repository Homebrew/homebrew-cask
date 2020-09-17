cask "curio" do
  version "14030.6"
  sha256 "46a2e9a67ce521e5b1c1216a1cecf14a32279150f67b9f0624352b1b5c23019e"

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast "https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  depends_on macos: ">= :mojave"

  app "Curio.app"
end

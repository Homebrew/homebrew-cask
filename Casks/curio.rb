cask "curio" do
  version "15,15008"
  sha256 "9e0c4176fd94ef9535bfb02289e8b8e43fc2cb4c3fe1135d2e3171ddd84fd9b3"

  url "https://www.zengobi.com/downloads/Curio#{version.after_comma.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Curio.app"
end

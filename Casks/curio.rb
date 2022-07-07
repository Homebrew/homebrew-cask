cask "curio" do
  version "22.1.1,22111"
  sha256 "d49099665bdd4608fd3569d4b563fb7a2d4768b2f4b204aefded89716a118b2e"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Curio.app"
end

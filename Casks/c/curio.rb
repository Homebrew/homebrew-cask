cask "curio" do
  version "25.0.1,25101"
  sha256 "4cbb833fc6ceeb7442fb5b0ca25b2cd8670da9fb0e9bded0c118d0db2117cce7"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Curio.app"
end

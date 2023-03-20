cask "curio" do
  version "25.0,25007"
  sha256 "a5224032cde4cde3114c6a0973545a4288b2c36fb6293c9ee542a79eb907064e"

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

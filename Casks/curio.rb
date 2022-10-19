cask "curio" do
  version "23.0,23007"
  sha256 "ef6842d57f3798180dc462c3207274fcf3c16d0386d632d415c33c80724d9414"

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

cask "curio" do
  version "14.4,14040.7"
  sha256 "0b7cce92c557ae664c2bf86b754d7df952823efcc11b5e081ceaf421cac5f37a"

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

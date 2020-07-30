cask "curio" do
  version "14020.6"
  sha256 "7bf93a0692351dfa4308290d16e4262fc80a2b707f7de5f414be0b0f919f7811"

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast "https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml"
  name "Curio"
  homepage "https://zengobi.com/curio/"

  depends_on macos: ">= :mojave"

  app "Curio.app"
end

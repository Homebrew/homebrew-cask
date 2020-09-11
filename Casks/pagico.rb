cask "pagico" do
  version "9.5.20200910"
  sha256 "d5ec384fd42ccd94bb52e7ce5188dcc09a22c56da5c6d59d99c4c6bc6b1caa6e"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

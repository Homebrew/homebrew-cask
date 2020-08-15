cask "pagico" do
  version "9.5.20200813"
  sha256 "8a288988dae6e14cc19653c1e12e29799ef2aa09ef3e29375e72b4af97777586"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

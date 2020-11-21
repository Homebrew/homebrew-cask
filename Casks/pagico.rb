cask "pagico" do
  version "9.6.20201120"
  sha256 "0b23ae34e3684f8b8db555982d4a6dfdb8303595a7b61fe275cb026562d66032"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

cask "pagico" do
  version "9.7.20201202"
  sha256 "c8c6516b75f9e50eecd56a1a1a92a2a51b57531557b7002dd681b6eaa63c3b95"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

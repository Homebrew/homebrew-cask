cask "pagico" do
  version "9.5.20200911"
  sha256 "6d9dbc55ce09f6fe3f2f5314a9e3b376f954c10c1e137d2456b2a27ac9dee9ea"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

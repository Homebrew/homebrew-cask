cask "pagico" do
  version "9.10,20210401"
  sha256 "62c191f301a628904fc5c016ea9a2b00b04e22a9f1b3c25f06661d82f0d37751"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
  name "Pagico"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.mac.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

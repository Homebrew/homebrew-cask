cask "pagico" do
  version "9.6.20201122"
  sha256 "e603a67813b8e2720122dcde916dcbe42b68c8054a2324afcd78cb66ca9d6c9a"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

cask "pagico" do
  version "9.7.20201207"
  sha256 "a2a86af4a81e433854302d12e40dc8df4475a9b0f5fe881742043bbf2d57b140"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

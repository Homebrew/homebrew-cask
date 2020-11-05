cask "pagico" do
  version "9.5.20201104"
  sha256 "afc21b0d138c7c43087cf6b820ad7e50a7a7f4b58419eaaeeb6ee7896e87e555"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end

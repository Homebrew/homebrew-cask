cask "axe-edit-iii" do
  version "1.06.06"
  sha256 "044be7cbeca4a7deb3092e333e0413cbde88d24cf47d33bdc4e8765bb6444db0"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/axe-fx-iii-edit/"
  name "Axe-Edit III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end

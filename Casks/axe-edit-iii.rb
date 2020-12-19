cask "axe-edit-iii" do
  version "1.08.07"
  sha256 "4e6b5c4adce146c6a68ad6c459f2f4d8f0ee7ae49623392f457a94a7f758f664"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/axe-fx-iii-edit/"
  name "Axe-Edit III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end

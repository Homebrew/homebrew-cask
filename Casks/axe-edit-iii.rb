cask "axe-edit-iii" do
  version "1.08.05"
  sha256 "c1ef36a894792e2da805302214128f2b5d820001bd35e9c16489e89193c2859f"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/axe-fx-iii-edit/"
  name "Axe-Edit III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end

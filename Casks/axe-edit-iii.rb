cask "axe-edit-iii" do
  version "1.08.01"
  sha256 "a9ca1157d397a2c0a6269cd0957d5e145cdbd3ab3cdef7e8b7a70a48f671a6a4"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/axe-fx-iii-edit/"
  name "Axe-Edit III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end

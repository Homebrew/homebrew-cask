cask "creepy" do
  version "1.4.1"
  sha256 "c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450"

  # github.com/jkakavas/creepy/ was verified as official when first introduced to the cask
  url "https://github.com/jkakavas/creepy/releases/download/v#{version}/cree.py_#{version}.dmg.zip"
  appcast "https://github.com/jkakavas/creepy/releases.atom"
  name "Creepy"
  homepage "https://www.geocreepy.com/"

  app "cree.py.app"
end

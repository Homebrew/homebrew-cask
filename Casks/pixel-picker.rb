cask "pixel-picker" do
  version "1.5.0"
  sha256 "61ed0cb9509b18a000491c9a9052296e1fd0789d95a5499768688bb941f87fc3"

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast "https://github.com/acheronfail/pixel-picker/releases.atom"
  name "Pixel Picker"
  homepage "https://github.com/acheronfail/pixel-picker"

  depends_on macos: ">= :sierra"

  app "Pixel Picker.app"
end

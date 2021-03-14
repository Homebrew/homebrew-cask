cask "pixel-picker" do
  version "1.6.0"
  sha256 "d31f9b9f3b5dda4827a215c20c4488c3151e4e14ada79dd744ad3097fe38beb9"

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast "https://github.com/acheronfail/pixel-picker/releases.atom"
  name "Pixel Picker"
  homepage "https://github.com/acheronfail/pixel-picker"

  depends_on macos: ">= :sierra"

  app "Pixel Picker.app"
end

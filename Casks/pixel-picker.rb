cask "pixel-picker" do
  version "1.4.0"
  sha256 "d0ea25460ae8d14eca8b76bc9c69ec2d3f652007b960b8596d6bb4b97629e110"

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast "https://github.com/acheronfail/pixel-picker/releases.atom"
  name "Pixel Picker"
  homepage "https://github.com/acheronfail/pixel-picker"

  depends_on macos: ">= :sierra"

  app "Pixel Picker.app"
end

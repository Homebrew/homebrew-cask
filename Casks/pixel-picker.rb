cask 'pixel-picker' do
  version '1.3.4'
  sha256 'dd0e79f4e1661dcfedcc38f136e4f9b18891d9dc91e5022d2c2d3925291bd022'

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast 'https://github.com/acheronfail/pixel-picker/releases.atom'
  name 'Pixel Picker'
  homepage 'https://github.com/acheronfail/pixel-picker'

  depends_on macos: '>= :sierra'

  app 'Pixel Picker.app'
end

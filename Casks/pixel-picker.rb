cask 'pixel-picker' do
  version '1.3.2'
  sha256 'e82420b680c53601c1a9ef4014416983dffbf4ac8ce74124e4375f4bbc48bb35'

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast 'https://github.com/acheronfail/pixel-picker/releases.atom'
  name 'Pixel Picker'
  homepage 'https://github.com/acheronfail/pixel-picker'

  app 'Pixel Picker.app'
end

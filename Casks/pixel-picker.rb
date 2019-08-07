cask 'pixel-picker' do
  version '1.3.6,3230770'
  sha256 '526de5b1480c8b421c1ecf943a219c5273a3b7fe8322991cd291d98b164e8fc8'

  url "https://github.com/acheronfail/pixel-picker/files/#{version.after_comma}/Pixel.Picker.#{version.before_comma}.dmg.zip"
  appcast 'https://github.com/acheronfail/pixel-picker/releases.atom'
  name 'Pixel Picker'
  homepage 'https://github.com/acheronfail/pixel-picker'

  depends_on macos: '>= :sierra'

  app 'Pixel Picker.app'
end

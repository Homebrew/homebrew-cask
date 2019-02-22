cask 'pixel-picker' do
  version '1.3.3'
  sha256 '67594e66473527d51aa5f7def7353196e714f1008107f4f9171fa8bf2c738df4'

  url "https://github.com/acheronfail/pixel-picker/releases/download/#{version}/Pixel.Picker.#{version}.dmg"
  appcast 'https://github.com/acheronfail/pixel-picker/releases.atom'
  name 'Pixel Picker'
  homepage 'https://github.com/acheronfail/pixel-picker'

  depends_on macos: '>= :sierra'

  app 'Pixel Picker.app'
end

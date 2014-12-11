cask :v1 => 'colorpicker' do
  version '1.6.1'
  sha256 '23f2e782e20ff172b06746803ad2879ab5e7208dc04818a1716c18249d1e360d'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml',
          :sha256 => 'e534a4e8a24ff6f3b315ca01e2c3442a8c2ce689b428b0d5f62bab1f538b0c62'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'
  license :unknown    # todo: improve this machine-generated value

  app 'ColorPicker.app'
end

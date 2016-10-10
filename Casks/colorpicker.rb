cask 'colorpicker' do
  version '1.7'
  sha256 'cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml',
          checkpoint: '0c5eb8f736ccd0ae1594d61d09ed4b44c7bb84e2c1aef4e32fcc5ffe6cce56bb'
  name 'ColorPicker'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'

  app 'ColorPicker.app'
end

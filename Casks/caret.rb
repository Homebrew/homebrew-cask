cask 'caret' do
  version '1.3.3'
  sha256 'cd47d5beed2deb1a55d3ddb65b4ec9ac1cefb6d50f1b5e1bde3bd3ea2c96aace'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/v#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '3d91c89c2f2bb2c594d07c48d93222758146c1bae16e13fd91bf20c9ebe8b2bc'
  name 'Caret'
  homepage 'http://caret.io/'
  license :commercial

  app 'Caret.app'
end

cask 'caret' do
  version '1.12.1'
  sha256 'cf730c7c6389714adb4fa5bbae1328d2a92824df07ff18408ef007d8996e83bc'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '203633db4b6b64d4c705aad237e4dbd2c6d9b51d67c0f307bb232cfbc049f7c2'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

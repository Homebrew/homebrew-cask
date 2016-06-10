cask 'caret' do
  version '1.3.2'
  sha256 '439d6fdb5f8c461312e83e55ceefe880c6eabdaaf4c52b0384a35f1f0b981f83'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/v#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '8ca9ddb2c318252727dec99eaf1a539a390738bed95f5e088d24c2d4923a8dd5'
  name 'Caret'
  homepage 'http://caret.io/'
  license :commercial

  app 'Caret.app'
end

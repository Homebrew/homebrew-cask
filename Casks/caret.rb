cask 'caret' do
  version '1.12.0'
  sha256 '041d7fa5cb22d38749c9402557920d4519c2bbbbcd9fd2c602a507e75526c973'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '9145c50d1c3ae4b4d9628df42d59d85168e9e81cb89c423623b8e037917f28f6'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

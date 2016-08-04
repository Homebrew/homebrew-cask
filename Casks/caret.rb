cask 'caret' do
  version '1.5.2'
  sha256 '32a6976a753a7f3f044747640882d33bf01fc7b4613fe78809a5c0cbda6d9bee'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'cec541f4991c7b7ff7a5e437a61ae8c3227df5076397988481b3990ad1ace8b4'
  name 'Caret'
  homepage 'http://caret.io/'
  license :commercial

  app 'Caret.app'
end

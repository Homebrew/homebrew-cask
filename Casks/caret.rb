cask 'caret' do
  version '1.11.3'
  sha256 '30e7f3b177638b6212809ad5d2cb9a809c9c50a041fabfbec095294a458f8bf3'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '71fa511477d44249e92c5309b7b1bd7a7af6b2a03fc04945e864431e5b0d7d0b'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

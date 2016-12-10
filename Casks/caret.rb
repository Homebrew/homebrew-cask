cask 'caret' do
  version '1.10.0'
  sha256 'b43670a833840f1f590b97c3e275c0f88773f4563cdbe080afc6d88b3b25962d'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'ebc58ab2af6e2880d9d26006215fabb5c8346ea818a61d1aeda97ee43cb82314'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

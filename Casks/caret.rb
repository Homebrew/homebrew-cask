cask 'caret' do
  version '3.1.0'
  sha256 'fe4604692dfec100b1f69af2563f51d39a9dd85c62a896ac435d01280ae0a1ec'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '58e0e821d6d9f57cd3f1eea8867f75164a67ec859ac8c2afcc64806f86d0bf71'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

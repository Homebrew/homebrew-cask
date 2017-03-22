cask 'caret' do
  version '1.15.1'
  sha256 '68ba4ea961f5d5c57812d4df2a29136fe563f71a3ba6470a363b638fd321536a'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '80b74eed8de527fb68f295c82e7873736e5c157d972130ab294e2ffc304ffd9d'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

cask 'caret' do
  version '1.5.4'
  sha256 '0c1dd5dd428c870795cb7c57915061fc491fe3cfedd6bf4795b6417f12c54c2b'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '792f7d2a5b93a020908879528f6725823e4ad1e4280ab5c5484eeb88c48bf4e6'
  name 'Caret'
  homepage 'https://caret.io/'
  license :commercial

  app 'Caret.app'
end

cask 'caret' do
  version '2.0.8'
  sha256 '7d24156368ba7ae7f2fbd89583fe53783af44c6fa2add4d79640439e45fd2312'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'bafbb6a15b2107268ecc61fd66969b1d1eaba391fa7f798d332557f60803f745'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

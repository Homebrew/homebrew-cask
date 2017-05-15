cask 'caret' do
  version '2.1.3'
  sha256 '363f11b1cb9a0b72f5998068770a1364ccf2fb8744cc66333d3112f01d1b73a4'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'aa877fd8c94ea916f302c37e78ddb7db474fff05162cc23a6b5ec7f817879186'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

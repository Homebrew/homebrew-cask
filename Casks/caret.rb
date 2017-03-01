cask 'caret' do
  version '1.14.3'
  sha256 'd69d2c5154dfba9c11e8fba93811def7a843bdc5a52731b22777fe3072fb5131'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '74061517283ccfa74a68dfba98396a5bcad952ce6d2a852b11eb4476a178286b'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

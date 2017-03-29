cask 'caret' do
  version '2.0.5'
  sha256 '84e3dcb448150261d54cdc14da0e62072bd89b12e93ae94f75736f11e96016a7'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'f76e2cd28ec1936d2da7456efa809cb2eadb8ce93752e55a6512162316bc63ec'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

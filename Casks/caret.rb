cask 'caret' do
  version '3.2.2'
  sha256 '208eb97c5649d7b9a3722ffc4979f8e9cdf89f48923ba142c1745b28df541738'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'f033817978cca18c8fe537e31796323313f42a974d6ebd0d510a2f988acd808b'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

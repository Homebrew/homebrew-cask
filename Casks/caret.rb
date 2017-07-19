cask 'caret' do
  version '3.3.0'
  sha256 '43cf2cd024ac09b8d09b46529e3bbe7132876809e88930199858644c09d47f7d'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'f033817978cca18c8fe537e31796323313f42a974d6ebd0d510a2f988acd808b'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

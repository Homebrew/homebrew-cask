cask 'caret' do
  version '2.0.7'
  sha256 'e8a9446d2686f9a2fd32cf0a0e03cf9a1d43379367c2b8980ac6b3a747fd3597'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '7a9e2cd101e55695392ca90e3ed55c71d8738444de43a65eabab506509212cc5'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

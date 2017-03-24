cask 'caret' do
  version '2.0.1'
  sha256 '06e6c84204a4688508e8ca654e2e3d7cb10fa5baf6ff00ae541310cb18a4d35c'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'afb9c3b3b16201d8a62d427c1e3b46fb69e49559377cf890e2e376c19a17857d'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

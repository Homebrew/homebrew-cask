cask 'caret' do
  version '1.5.3'
  sha256 'fe309e6bbdd7ddf1cf062d01c2fdb6c08daac04595224791cc584a8a75f2c818'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'a8143186070ad5fc97fb31e28f924dd5da20ad15500f95fb5af6d63ee48b3ab3'
  name 'Caret'
  homepage 'https://caret.io/'
  license :commercial

  app 'Caret.app'
end

cask 'caret' do
  version '3.4.3'
  sha256 '2a435248be7907144352dc94a3170af1acf800edbc76353c818195f40b0e0917'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'e288c7b0b3622dd6981f7ef3a7489640e05badf23c30917059bc4ef2d55a1fe0'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

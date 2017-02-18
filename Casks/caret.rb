cask 'caret' do
  version '1.14.0'
  sha256 'df0b0eccf8e7890ba0b66f8f7146b3a9841ade60cc5ea915795c96be670c85cb'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'ce2ec8d1d450c701814c6912fbdba082b9b068e1bce4b63bb1d97ce124093aa8'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

cask 'caret' do
  version '1.11.2'
  sha256 '0097a9059bd66f1fc244d48d5e942c00cf2b097b43acc752efe74d4fbcdd5831'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: 'fb2841ca280e9ea64aa17506c7ae586b85e7306adbf6ed5ca1df90acf192befa'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

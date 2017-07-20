cask 'caret' do
  version '3.3.1'
  sha256 '5cf27bbe41505bf7f5e7cd8bcb195d320ad7ee6a19ca5e439eecaa5abfe14051'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '89b735f5542d0a670b915dbd75438d83411c7815812294f605a24a90a7fb606a'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

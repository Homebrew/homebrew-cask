cask 'caret' do
  version '3.0.2'
  sha256 'fa1475ec188c0e212b77060c183cad231e0875168e8e01608a6c054a190843b0'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '7862c2486ac070a19097a38433d94e1936085909a3c630b67a05de31e30ca5e5'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

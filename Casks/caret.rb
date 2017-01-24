cask 'caret' do
  version '1.13.4'
  sha256 '0713abb9f580e66debdc01f29c8dcd671d9866a3d65fb84bcab7c7a98dd1e07d'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '231d2003111ededfd466c91de687c27fbf8adeb52196ef7606a565fdc0f45a39'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end

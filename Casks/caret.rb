cask 'caret' do
  version '3.4.6'
  sha256 'a7d17bb7e9c938d8559f1569899a14413dae33bc4a7d4de038bf430447008aea'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '3f9502e8588d2afa2bf0b84dbd589c6f548de07916814f34daec130723c1b99c'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'

  zap trash: [
               '~/Library/Application Support/Caret',
               '~/Library/Caches/io.caret',
               '~/Library/Caches/io.caret.ShipIt',
               '~/Library/Cookies/io.caret.binarycookies',
               '~/Library/Preferences/io.caret.helper.plist',
               '~/Library/Preferences/io.caret.plist',
               '~/Library/Saved Application State/io.caret.savedState',
             ]
end

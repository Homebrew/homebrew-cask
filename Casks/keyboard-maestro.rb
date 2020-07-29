cask 'keyboard-maestro' do
  version '9.0.5'
  sha256 'de57500c8ffe6b19366ce7117faa12674797dd90a65a47196e7ec147e90487fe'

  # stairways.com/ was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  appcast 'https://www.keyboardmaestro.com/action/sivc?M&U&08248000&6ABF5EF7&xxxxxxxx&00000000&000010E0&KM&EN'
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/main/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stairways.keyboardmaestro.editor.sfl*',
               '~/Library/Application Support/Keyboard Maestro',
               '~/Library/Caches/com.stairways.keyboardmaestro.editor',
               '~/Library/Caches/com.stairways.keyboardmaestro.engine',
               '~/Library/Logs/Keyboard Maestro',
               '~/Library/Preferences/com.stairways.keyboardmaestro.editor.plist',
               '~/Library/Preferences/com.stairways.keyboardmaestro.engine.plist',
               '~/Library/Preferences/com.stairways.keyboardmaestro.plist',
               '~/Library/Saved Application State/com.stairways.keyboardmaestro.editor.savedState',
             ]
end

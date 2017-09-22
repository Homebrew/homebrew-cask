cask 'keyboard-maestro' do
  version '8.0'
  sha256 '4081278b459bd9c606fcc7a3793b2041d117a9026abfe6a01e463e94c767d51e'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/main/'

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stairways.keyboardmaestro.editor.sfl',
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

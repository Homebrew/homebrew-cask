cask 'keyboard-maestro' do
  version '7.3.1'
  sha256 '844e2fa2f7c9fbd8029d855e4f42e950d86c0bb980cd65694d1aa2f7a4da1994'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'

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

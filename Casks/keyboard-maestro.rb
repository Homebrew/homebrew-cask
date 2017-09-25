cask 'keyboard-maestro' do
  version '8.0.1'
  sha256 '2701f9a597e133d779693ade14e2ca3d72974a605fddc6c9f17987418683bf4c'

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

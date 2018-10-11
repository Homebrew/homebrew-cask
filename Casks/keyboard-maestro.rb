cask 'keyboard-maestro' do
  version '8.2.4'
  sha256 '4547c28e7628b5c95112d18ed388d3f581fe231888bc062c152c279df7da6373'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/main/'

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

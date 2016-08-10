cask 'keyboard-maestro' do
  version '7.2.1'
  sha256 'f3ab706fcfe97ebf6523baae4a5ebcb1b032f2f757a77ffb633f4dc4ac6d96ea'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stairways.keyboardmaestro.editor.sfl',
                '~/Library/Application Support/Keyboard Maestro',
                '~/Library/Application Support/Keyboard Maestro/Keyboard Maestro Clipboards.plist',
                '~/Library/Application Support/Keyboard Maestro/Keyboard Maestro Macro Stats.plist',
              ]
end

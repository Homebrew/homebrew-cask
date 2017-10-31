cask 'atom' do
  version '1.21.2'
  sha256 '08f44468da53255001f7226b135620e507defa12aa608ab721e2324b3f1078b5'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'e61deb63c36f6a191a071f77993c18e3236502f872d0bdcaee4a3a80833b5947'
  name 'Github Atom'
  homepage 'https://atom.io/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom.app'
  binary "#{appdir}/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm'
  binary "#{appdir}/Atom.app/Contents/Resources/app/atom.sh", target: 'atom'

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Caches/com.github.atom.ShipIt',
                '~/Library/Preferences/com.github.atom.helper.plist',
                '~/Library/Preferences/com.github.atom.plist',
                '~/Library/Saved Application State/com.github.atom.savedState',
              ]
end

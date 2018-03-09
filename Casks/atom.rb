cask 'atom' do
  version '1.24.1'
  sha256 'd940e98b8b8d8f7c0d0c597b4ea30deed0a6bbdcf22d0d8878be02b2004fed18'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '300a4018dd6ed437ef6f705497fabb1b73978c368a42cf1698003f2c3f49e5ac'
  name 'Github Atom'
  homepage 'https://atom.io/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Atom.app'
  binary "#{appdir}/Atom.app/Contents/Resources/app/apm/bin/apm"
  binary "#{appdir}/Atom.app/Contents/Resources/app/atom.sh", target: 'atom'

  zap trash: [
               '~/.atom',
               '~/Library/Application Support/Atom',
               '~/Library/Application Support/ShipIt_stderr.log',
               '~/Library/Application Support/ShipIt_stdout.log',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*',
               '~/Library/Application Support/com.github.atom.ShipIt',
               '~/Library/Caches/com.github.atom',
               '~/Library/Caches/com.github.atom.ShipIt',
               '~/Library/Preferences/com.github.atom.helper.plist',
               '~/Library/Preferences/com.github.atom.plist',
               '~/Library/Saved Application State/com.github.atom.savedState',
             ]
end

cask 'atom' do
  version '1.26.1'
  sha256 '5017e5c91206e764ba1fde8d19b8f78d045a4b11220b85c2347eaa06e7436914'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '17c78fd68e68cf0037c19d40d1b8cdf93d673e4ee06b5738a1a13e2789ac2e8e'
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

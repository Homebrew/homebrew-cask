cask 'atom' do
  version '1.22.1'
  sha256 'cf06b74ac106a2b11a5d7ea346a3107923bde4469cd9fcb91b2726ad850f12b4'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'f27c87798297b7b32daf08e6e8f11f57eb6ae168c1f491762aa174d06acd6739'
  name 'Github Atom'
  homepage 'https://atom.io/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom.app'
  binary "#{appdir}/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm'
  binary "#{appdir}/Atom.app/Contents/Resources/app/atom.sh", target: 'atom'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Caches/com.github.atom',
                '~/Library/Caches/com.github.atom.ShipIt',
                '~/Library/Saved Application State/com.github.atom.savedState',
              ],
      trash:  [
                '~/.atom',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Preferences/com.github.atom.helper.plist',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end

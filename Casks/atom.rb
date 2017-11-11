cask 'atom' do
  version '1.22.0'
  sha256 '47c4fb607510aa2da19995c671195180bb78704552b4dd34385a0dc029c94780'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '5d91fb8b10735eaf9660d884117e7032dfb7adc210d40a47312b0087b7a91811'
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

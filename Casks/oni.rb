cask 'oni' do
  version '0.2.17'
  sha256 'd07074ff5daae2a8d06f6e25bab3a0efaf05e338ecda498a1d1a01ef176e1b48'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: 'd1ff0608e86d6843303b056650a5034ffad6d8e92782e720f59060d41d7fbd3b'
  name 'Oni'
  homepage 'https://www.onivim.io/'

  app 'Oni.app'
  binary "#{appdir}/Oni.app/Contents/Resources/app/oni.sh", target: 'oni'

  zap trash: [
               '~/.oni',
               '~/Library/Application Support/oni',
               '~/Library/Preferences/com.extropy.oni.helper.plist',
               '~/Library/Preferences/com.extropy.oni.plist',
               '~/Library/Saved Application State/com.extropy.oni.savedState',
             ]
end

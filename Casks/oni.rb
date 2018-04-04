cask 'oni' do
  version '0.3.2'
  sha256 '86f45c6e933f128402a48ec4e62028acd0a4e2e90b6d17f6bb5db08bd9ac8fff'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: 'bed10e7113934eb3b96bdc5841d6784e870370800ba43f905a752642898a030a'
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

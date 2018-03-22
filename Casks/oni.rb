cask 'oni' do
  version '0.3.1'
  sha256 '2364a5a0f9c0e4c31c2714f5741b665e431bd0a16ee65eea41e609b0cdbcbe8e'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: 'e2325811be2ee1bce9e853f4c8f483509dbbfd4781eb6ae2208e7bfe37e05bf0'
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

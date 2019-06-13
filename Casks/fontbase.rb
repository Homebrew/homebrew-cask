cask 'fontbase' do
  version '2.8.0'
  sha256 '3fb23c7c0bb1bfeb12baa761bcb6d253b4691c7d2d27ebc2a5742b79ca1297ac'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://fontba.se/updates'
  name 'FontBase'
  homepage 'https://fontba.se/'

  app 'FontBase.app'

  zap trash: [
               '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
               '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
               '~/Library/Application Support/FontBase',
               '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
             ]
end

cask 'fontbase' do
  version '2.3.4'
  sha256 '2a4c4d358fcc8ff30d49fab38213d88a2c535146403fa62fdf46faebba8aee1d'

  url "http://releases.fontba.se/mac/FontBase-#{version}.dmg"
  name 'FontBase'
  homepage 'http://fontba.se/'

  app 'FontBase.app'

  zap trash: [
               '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
               '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
               '~/Library/Application Support/FontBase',
               '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
             ]
end

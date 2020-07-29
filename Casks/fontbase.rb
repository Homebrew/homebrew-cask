cask 'fontbase' do
  version '2.11.3'
  sha256 'c29ea63ae04de1ca67b51c892649e25783442d8d00d70ce41510cd43187d2d2c'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://releases.fontba.se/mac/latest-mac.yml'
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

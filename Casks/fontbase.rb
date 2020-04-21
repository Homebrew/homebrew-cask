cask 'fontbase' do
  version '2.11.2'
  sha256 'e0192136addaacf313ce05cbd451952d206590d1f0ba790a7c918185c75bbe7f'

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

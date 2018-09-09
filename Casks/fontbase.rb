cask 'fontbase' do
  version '2.6.0'
  sha256 '42028aeb93edacf1e84cc0b5b047ac50165dc6f75278f2b2a39361156847eb1a'

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

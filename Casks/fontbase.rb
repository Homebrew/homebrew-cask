cask 'fontbase' do
  version '2.4.1'
  sha256 'eacd6814fe36e0da9529ebf8bd205cc9fa305f8cd33c4c34068cb1a37f9f48ba'

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

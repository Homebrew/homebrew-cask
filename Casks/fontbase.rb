cask 'fontbase' do
  version '2.5.0'
  sha256 'eeb694d64b495fb59895b77dd6a4e030de2060a7ab29156cbe104eadf3ed54bf'

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

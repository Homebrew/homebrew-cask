cask 'fontbase' do
  version '2.5.3'
  sha256 '1007a23bb7d13812dc40de99b1032fbc1f900fd382838566609fe7d76fa3a9d7'

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

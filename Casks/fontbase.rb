cask 'fontbase' do
  version '2.1.2'
  sha256 '850157757b70196860862303e84944056bfab0719567c21c80a5868323e1b019'

  url "http://releases.fontba.se/mac/#{version}/FontBase-#{version}.dmg"
  name 'FontBase'
  homepage 'http://fontba.se/'

  app 'FontBase.app'

  zap delete: [
                '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
                '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
                '~/Library/Application Support/FontBase',
                '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
              ]
end

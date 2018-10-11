cask 'fontbase' do
  version '2.6.3'
  sha256 '20f256f8e1ebdffd2bff9dcc219345e33360df73b469eef33fa651afe784ffd1'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
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

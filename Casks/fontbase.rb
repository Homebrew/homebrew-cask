cask 'fontbase' do
  version '2.8.5'
  sha256 '1644c52d860524ea50bc5d15a256f30ea3e99f13ff5c5b17b6d11b3b748fc7d1'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://fontba.se/_next/static/hSC8UGFOdx9C9D5-glqs5/pages/downloads/thankyou.js'
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

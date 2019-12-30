cask 'luna-secondary' do
  version :latest
  sha256 :no_check

  url 'https://s3.lunadisplay.com/downloads/LunaSecondary.dmg'
  name 'Luna Secondary'
  homepage 'https://lunadisplay.com/'

  app 'Luna Secondary.app'

  zap trash: [
               '~/Library/Caches/com.astro-hq.LunaSecondaryMac',
               '~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist',
             ]
end

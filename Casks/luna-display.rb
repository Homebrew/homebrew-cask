cask 'luna-display' do
  version '1.1.2'
  sha256 '4bdd3494b3d8544eeff816445dba17a9a08da3c731de5827d243ab12beb3c22f'

  # s3.amazonaws.com/s3.lunadisplay.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.zip"
  appcast 'https://s3.amazonaws.com/lunadisplay.com/downloads/sparkle.xml'
  name 'LunaDisplay'
  homepage 'https://lunadisplay.com/'

  depends_on macos: '>= :el_capitan'

  app 'Luna Display.app'

  uninstall quit: 'com.astro-hq.LunaDisplayMac'

  zap trash: [
               '~/Library/Caches/com.astro-hq.LunaDisplayMac',
               '~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist',
               '~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState',
             ]
end

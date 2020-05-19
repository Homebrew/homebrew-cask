cask 'roaringapps' do
  version '1.4.1'
  sha256 'c2df3f4d06fe491272453d33cb41aa3297c19b80505764abf261203ba8d8cc80'

  # s3.amazonaws.com/s3.roaringapps.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.roaringapps.com/downloads/RoaringApps-#{version}.zip"
  appcast 'https://roaringapps.com/mac-app'
  name 'RoaringApps'
  homepage 'https://roaringapps.com/mac-app'

  app 'RoaringApps.app'

  zap trash: [
               '~/Library/Application Support/RoaringApps',
               '~/Library/Caches/com.brycecameron.RoaringApps',
               '~/Library/Cookies/com.brycecameron.RoaringApps.binarycookies',
               '~/Library/Preferences/com.brycecameron.RoaringApps.plist',
             ]
end

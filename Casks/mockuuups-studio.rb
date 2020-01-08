cask 'mockuuups-studio' do
  version '2.4.0'
  sha256 'b6279131e29fdf93da25587423e808528fdf7333e21c9f243a3f2c4ecebd92d0'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://mockuuups.studio/download/mac/'
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'

  zap trash: [
               '~/Library/Application Support/Mockuuups Studio',
               '~/Library/Caches/com.mockuuups.studio-app',
               '~/Library/Caches/com.mockuuups.studio-app.ShipIt',
               '~/Library/Cookies/com.mockuuups.studio-app.binarycookies',
               '~/Library/Preferences/com.mockuuups.studio-app.helper.plist',
               '~/Library/Preferences/com.mockuuups.studio-app.plist',
               '~/Library/Saved Application State/com.mockuuups.studio-app.savedState',
             ]
end

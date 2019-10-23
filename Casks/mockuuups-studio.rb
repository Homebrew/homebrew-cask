cask 'mockuuups-studio' do
  version '2.2.1'
  sha256 '2d542ca9f9e162f20a6df2a39b26d62a8e9570968279a2960da61b68c7c26447'

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

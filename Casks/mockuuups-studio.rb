cask 'mockuuups-studio' do
  version '2.5.0'
  sha256 'f09358f867efdbd4927a25dcb3805a964e0374ec7e3b38a47ea46cc035a77354'

  # mockuuups.com/ was verified as official when first introduced to the cask
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

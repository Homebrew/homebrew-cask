cask 'mockuuups-studio' do
  version '2.1.0'
  sha256 'bfc3449815f36fafa62a12bbc2c077ee6c8bb6937ff629ce8a15eab567bf3d08'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip"
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'

  zap delete: [
                '~/Library/Application Support/Mockuuups Studio',
                '~/Library/Caches/com.mockuuups.studio-app',
                '~/Library/Caches/com.mockuuups.studio-app.ShipIt',
                '~/Library/Cookies/com.mockuuups.studio-app.binarycookies',
                '~/Library/Preferences/com.mockuuups.studio-app.helper.plist',
                '~/Library/Preferences/com.mockuuups.studio-app.plist',
                '~/Library/Saved Application State/com.mockuuups.studio-app.savedState',
              ]
end

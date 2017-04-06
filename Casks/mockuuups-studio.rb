cask 'mockuuups-studio' do
  version '2.0.0'
  sha256 'f5a3f7da8b61b783a851e390b633f9fbc60c6875aa61eb7872f8b59a801706d5'

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

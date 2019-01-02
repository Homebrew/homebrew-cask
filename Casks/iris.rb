cask 'iris' do
  version '1.1.2'
  sha256 '5aeda1ea3583390ca502ce70d24e405c637f3512e18402ce0204c3c85636b1bd'

  # raw.githubusercontent.com/danielng01/Iris-Builds was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/danielng01/Iris-Builds/master/OSX/Iris-#{version}-OSX.zip"
  appcast 'https://iristech.co/iris/'
  name 'Iris'
  homepage 'https://iristech.co/iris/'

  app 'Iris.app'

  uninstall launchctl: 'co.iristech.Iris',
            quit:      'co.iristech.Iris'

  zap trash: [
               '~/Library/Preferences/com.iristech.Iris.plist',
               '~/Library/Saved Application State/co.iristech.Iris.savedState',
             ]
end

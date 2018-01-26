cask 'iris' do
  version '0.9.2.5'
  sha256 '4c93b0c9391302470ad53940cec32f7ce6f9f67b74aadec498c6368e344f44c3'

  # raw.github.com/danielng01/Iris-Builds/master/OSX was verified as official when first introduced to the cask
  url "https://raw.github.com/danielng01/Iris-Builds/master/OSX/Iris-#{version}-OSX.zip"
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

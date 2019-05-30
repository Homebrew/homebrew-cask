cask 'iris' do
  version '1.1.6'
  sha256 'f241b98649690ca88bb81bd474480f159ae423bb4116fc0281a27c870b24275e'

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

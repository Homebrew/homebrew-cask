cask 'iris' do
  version '1.1.1'
  sha256 '119608a687ba2996bda40d98e962ceded94dc5515ef84e9e8cdcd6071ba62858'

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

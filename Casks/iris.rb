cask 'iris' do
  version '0.9.9'
  sha256 '898e1efeaf0983c5e1d3d2b8eca29b61c6a9e18d55b21e28162d8ce3a45d81ce'

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

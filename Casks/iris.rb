cask 'iris' do
  version '1.0.9'
  sha256 'e85d408c5ba2cd82691976974be794c5940833745cb013035f1b400ae6e2df73'

  # raw.githubusercontent.com/danielng01/Iris-Builds was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/danielng01/Iris-Builds/master/OSX/Iris-#{version}-OSX.zip"
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

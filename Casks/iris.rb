cask 'iris' do
  version '0.9.3.4'
  sha256 'd223992e2726106ff27329d7a5dc63f4b7c6e115fe0b9c96dbe95ae5926c0c4e'

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

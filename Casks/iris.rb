cask 'iris' do
  version '0.9.0.7'
  sha256 '6074a029736dcc25f393d3bc28babdcc0973bef1fe15eda0ee95b0d12ebc7241'

  # raw.github.com/danielng01/Iris-Builds/master/OSX was verified as official when first introduced to the cask
  url "https://raw.github.com/danielng01/Iris-Builds/master/OSX/Iris-#{version}-OSX.zip"
  name 'Iris'
  homepage 'https://iristech.co/iris/'

  app 'Iris.app'

  uninstall launchctl: 'co.iristech.Iris',
            quit:      'co.iristech.Iris'

  zap delete: '~/Library/Saved Application State/co.iristech.Iris.savedState',
      trash:  '~/Library/Preferences/com.iristech.Iris.plist'
end

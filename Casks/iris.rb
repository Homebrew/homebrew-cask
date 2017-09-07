cask 'iris' do
  version '0.9.1.7'
  sha256 '2f44e0bcb32a87f421536efc4fda931d34f722ffe637f70c8e42c139383113a3'

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

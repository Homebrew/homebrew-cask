cask 'iris' do
  version '1.0.0'
  sha256 '29af1310b8650b808ef7a327c4832bcf5bd2b5ea672fd51ef3d87bf4ba092ed8'

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

cask 'ios-app-signer' do
  version '1.9'
  sha256 '5130b0748115d2d4b54f29a65b86e82f60f630124fec6bbd1fc5677eee6e6f08'

  # github.com/DanTheMan827/ios-app-signer was verified as official when first introduced to the cask
  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip"
  appcast 'https://github.com/DanTheMan827/ios-app-signer/releases.atom',
          checkpoint: '180b0e34e5af5fe688180b1760cefd5d3c0fa5d845a7e578d5a24a7d3d8377a2'
  name 'iOS App Signer'
  homepage 'https://dantheman827.github.io/ios-app-signer/'

  app 'iOS App Signer.app'
end

cask 'ios-app-signer' do
  version '1.9'
  sha256 '5130b0748115d2d4b54f29a65b86e82f60f630124fec6bbd1fc5677eee6e6f08'

  # github.com/DanTheMan827/ios-app-signer was verified as official when first introduced to the cask
  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip"
  appcast 'https://github.com/DanTheMan827/ios-app-signer/releases.atom',
          checkpoint: '608bfbffa0f7cc8601db1c62802b1f3b61a3fa94e0bdd3387db0bf8869148c72'
  name 'iOS App Signer'
  homepage 'https://dantheman827.github.io/ios-app-signer/'

  app 'iOS App Signer.app'
end

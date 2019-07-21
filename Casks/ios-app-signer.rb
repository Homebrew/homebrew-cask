cask 'ios-app-signer' do
  version '1.2'
  sha256 '1184ed787db30b0bae3e96bc744af2da9ff891e21a404a3cfd550a08aa402052'

  # github.com/DanTheMan827/ios-app-signer was verified as official when first introduced to the cask
  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip"
  appcast 'https://github.com/DanTheMan827/ios-app-signer/releases.atom'
  name 'iOS App Signer'
  homepage 'https://dantheman827.github.io/ios-app-signer/'

  app 'iOS App Signer.app'
end

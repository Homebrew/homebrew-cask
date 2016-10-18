cask 'ios-app-signer' do
  version '1.8.2'
  sha256 '5ae5e9ad1a5d97c858fdeda06ae7eb764f5abf1df75a7a8e0028c49689de8877'

  # github.com/DanTheMan827/ios-app-signer was verified as official when first introduced to the cask
  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip"
  name 'iOS App Signer'
  homepage 'https://dantheman827.github.io/ios-app-signer/'

  app 'iOS App Signer.app'
end

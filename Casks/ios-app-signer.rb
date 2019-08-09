cask 'ios-app-signer' do
  version '1.13'
  sha256 'd6a6e09c430b4827d8e02f6df745383f754a4d99ab53c2baae19bd9eb46d8dd4'

  # github.com/DanTheMan827/ios-app-signer was verified as official when first introduced to the cask
  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip"
  appcast 'https://github.com/DanTheMan827/ios-app-signer/releases.atom'
  name 'iOS App Signer'
  homepage 'https://dantheman827.github.io/ios-app-signer/'

  app 'iOS App Signer.app'
end

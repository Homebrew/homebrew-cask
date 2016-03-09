cask 'safe-in-cloud' do
  version :latest
  sha256 :no_check

  url 'https://www.safe-in-cloud.com/images/downloads/SafeInCloud.app.dmg'
  name 'SafeInCloud Password Manager'
  homepage 'https://www.safe-in-cloud.com'
  license :gratis

  app 'Safe In Cloud.app'
end

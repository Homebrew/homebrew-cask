cask :v1 => 'safe-in-cloud' do
  version :latest
  sha256 :no_check

  url 'https://www.safe-in-cloud.com/images/downloads/SafeInCloud.app.dmg'
  name 'SafeInCloud'
  name 'SafeInCloud Password Manager'
  homepage 'https://www.safe-in-cloud.com'
  license :gratis

  app 'Safe In Cloud.app'

  caveats do
    free_license 'https://www.safe-in-cloud.com/en/license-agreement.html'
  end
end

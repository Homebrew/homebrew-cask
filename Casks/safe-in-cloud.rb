class SafeInCloud < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.safe-in-cloud.com/images/downloads/Safe%20In%20Cloud.dmg'
  homepage 'http://www.safe-in-cloud.com'

  app 'Safe In Cloud.app'
end

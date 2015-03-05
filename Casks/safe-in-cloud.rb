cask :v1 => 'safe-in-cloud' do
  version :latest
  sha256 :no_check

  url 'http://www.safe-in-cloud.com/images/downloads/Safe%20In%20Cloud.dmg'
  name 'SafeInCloud'
  name 'SafeInCloud Password Manager'
  homepage 'http://www.safe-in-cloud.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Safe In Cloud.app'
end

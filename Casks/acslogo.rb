cask :v1 => 'acslogo' do
  version '1.5.1'
  sha256 'fcdab9679a9cc783d4b7912d611442faa1fe1293497c4cb649f6808a58d27082'

  url "http://www.alancsmith.co.uk/logo/ACSLogo#{version.gsub('.', '')}.dmg"
  name 'ACSLogo'
  homepage 'http://www.alancsmith.co.uk/logo/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ACSLogo/ACSLogo.app'
end

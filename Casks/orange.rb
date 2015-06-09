cask :v1 => 'orange' do
  version '2.7.8-dcf9af9'
  sha256 '2f91e55f41f08b0d691b553f70c38266491ba8efd1c0bd2c60ad8791cd25d81f'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end

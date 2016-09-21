cask 'rodeo' do
  version '2.2.0'
  sha256 '9daab60ceb5d28cc14976140301b7d805fd57ed8dc7da162b513ec4973894358'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: 'f420826572fda5cf2f9e644864c45c6d1e4abde7b6cb0f162a0b2c5d749e39c4'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end

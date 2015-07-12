cask :v1 => 'adwaremedic' do
  version '2.2.6'
  sha256 'e43517656b664856d4497a9edd9bfea353cf4167327311cd7c79f1d2fe355b61'

  url "http://www.adwaremedic.com/versions/AdwareMedic#{version}.zip"
  name 'AdwareMedic'
  appcast 'http://www.adwaremedic.com/versions/updates.xml',
          :sha256 => 'f93747bc91165da2321ad80277177eec745e316dc6fd7c5c511b72c8a521ad4f'
  homepage 'http://www.adwaremedic.com/'
  license :gratis

  app 'AdwareMedic.app'
end

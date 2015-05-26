cask :v1 => 'adwaremedic' do
  version :latest
  sha256 :no_check

  url 'http://www.adwaremedic.com/AdwareMedic.dmg'
  name 'AdwareMedic'
  appcast 'http://www.adwaremedic.com/versions/updates.xml',
          :sha256 => 'f93747bc91165da2321ad80277177eec745e316dc6fd7c5c511b72c8a521ad4f'
  homepage 'http://www.adwaremedic.com/'
  license :gratis

  app 'AdwareMedic.app'
end

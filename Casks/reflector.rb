cask :v1 => 'reflector' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Reflector/Mac/Reflector.dmg'
  appcast 'http://reflectorapp.com/updates/reflector.xml'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :unknown

  app 'Reflector.app'
end

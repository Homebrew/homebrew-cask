cask :v1 => 'reflector' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Reflector/Mac/Reflector.dmg'
  appcast 'http://reflectorapp.com/updates/reflector.xml'
  name 'Reflector'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Reflector.app'
end

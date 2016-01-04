cask 'orbit' do
  version :latest
  sha256 :no_check

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml',
          :sha256 => '5a20e9c14c18bb4be8a7195294699ff1785eaf243d264c867d4817ada59e6cb4'
  name 'Orbit'
  homepage 'http://orbitapp.net'
  license :gratis

  app 'Orbit.app'
end

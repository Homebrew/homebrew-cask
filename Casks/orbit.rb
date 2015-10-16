cask :v1 => 'orbit' do
  version :latest
  sha256 :no_check

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml'
  name 'Orbit'
  homepage 'http://orbitapp.net'
  license :gratis

  app      'Orbit.app'
end

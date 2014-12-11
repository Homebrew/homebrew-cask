cask :v1 => 'orbit' do
  version :latest
  sha256 :no_check

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml'
  homepage 'http://orbitapp.net'
  license :unknown    # todo: improve this machine-generated value

  app      'Orbit.app'
end

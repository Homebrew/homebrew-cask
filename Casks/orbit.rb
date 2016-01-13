cask 'orbit' do
  version :latest
  sha256 :no_check

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml',
          :checkpoint => 'd62b66471abc3ea5463ab2bf7115913f5774b89faffdcfb98f314ed53caaeba6'
  name 'Orbit'
  homepage 'http://orbitapp.net'
  license :gratis

  app 'Orbit.app'
end

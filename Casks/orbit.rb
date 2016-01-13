cask 'orbit' do
  version :latest
  sha256 :no_check

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml',
          :checkpoint => 'a9f942b47e1c4a6407cb5ecf8b5eb868df5328911bbc60120b095a9bc9bba0ed'
  name 'Orbit'
  homepage 'http://orbitapp.net'
  license :gratis

  app 'Orbit.app'
end

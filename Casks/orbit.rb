cask 'orbit' do
  version '1.1.1'
  sha256 '9d62f432db392a972b0248bd41e87c95c95e3a731d5d63d479f741b71debbda5'

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml'
  name 'Orbit'
  homepage 'http://orbitapp.net/'

  app 'Orbit.app'
end

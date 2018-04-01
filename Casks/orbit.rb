cask 'orbit' do
  version '1.1.1'
  sha256 '9d62f432db392a972b0248bd41e87c95c95e3a731d5d63d479f741b71debbda5'

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml',
          checkpoint: '1b52688aa84acd7e40001552cad376ca0b03ea9700351ffb2df44a06e8501f66'
  name 'Orbit'
  homepage 'http://orbitapp.net/'

  app 'Orbit.app'
end

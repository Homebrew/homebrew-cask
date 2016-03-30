cask 'orbit' do
  version '1.1.1'
  sha256 '9d62f432db392a972b0248bd41e87c95c95e3a731d5d63d479f741b71debbda5'

  url 'http://orbitapp.net/updates/Orbit.zip'
  appcast 'http://orbitapp.net/updates/appcast.xml',
          checkpoint: 'd62b66471abc3ea5463ab2bf7115913f5774b89faffdcfb98f314ed53caaeba6'
  name 'Orbit'
  homepage 'http://orbitapp.net'
  license :gratis

  app 'Orbit.app'
end

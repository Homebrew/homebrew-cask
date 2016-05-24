cask 'harbor' do
  version '0.1'
  sha256 '1de5be9ac66bdb79b2dd2ef4e6303f0bbc93c7fca11561e446e8d67d94ab14ef'

  url "https://github.com/devmynd/harbor/releases/download/v#{version}/Harbor.app.zip"
  appcast 'https://github.com/devmynd/harbor/releases.atom',
          checkpoint: '2495aabeb35c634b8b49f63d142851cd79dee329b35e9f5048293d0b4772e8eb'
  name 'Harbor'
  homepage 'https://github.com/devmynd/harbor'
  license :mit

  app 'Harbor.app'
end

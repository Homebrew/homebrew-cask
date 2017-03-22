cask 'aircall' do
  version '1.3.11'
  sha256 '7e0e4afb5f5232ea2c7c8bb6b0564c284c8349ae60183a10a001687957d06c44'

  url "https://electron.aircall.io/download/#{version}/osx"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '14292b0c3dab7db43901f9ff5e3b0fc5d22b5d7b6989b9574f60df261e610077'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end

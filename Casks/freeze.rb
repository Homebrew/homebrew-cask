cask 'freeze' do
  version '2.4'
  sha256 '74b9fb0f8943298434ce2a8ec27cc5039d5f337a0c1182515c675e5a907b6ad4'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'a77c379106e7fc31ce5f29473628b3a910f7b1a875d5ddb053b78677a0bf4fa2'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end

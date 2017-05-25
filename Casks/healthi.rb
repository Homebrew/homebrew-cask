cask 'healthi' do
  version '2.2.0'
  sha256 '9ed76845dc84a2cb41a2e038177ab9c184269ddf6d14cf6f6a83b9ff08af6400'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: 'ad545cb3efe854044d7e7fe30a04729c93942bbe44409bc1d5ffeff985891c6b'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end

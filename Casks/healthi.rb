cask 'healthi' do
  version '2.2.0'
  sha256 '9ed76845dc84a2cb41a2e038177ab9c184269ddf6d14cf6f6a83b9ff08af6400'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '2de17de7a5190ecca0c107eb0dfd439dcb233f392876b624e2b78bcb367c7fa2'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end

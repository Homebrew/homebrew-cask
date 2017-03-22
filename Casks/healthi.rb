cask 'healthi' do
  version '2.2.0'
  sha256 '9ed76845dc84a2cb41a2e038177ab9c184269ddf6d14cf6f6a83b9ff08af6400'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: 'a0bcda00f251f223d7444e5ad6f1c2579e3e444116ab9ab57559ec8d9f7a2826'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end

cask 'healthi' do
  version '2.1.0'
  sha256 'c6e78e7c5f942078394fe4467c4acf58a6f44183d748b0d61f9ab8de832e9777'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '36ae6b106cca01ee635bc31f99e0d6f6dc2ada03d382d893fb10b895206b7e19'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end

cask 'healthi' do
  version '1.0.2'
  sha256 '839bb026e9a3c58297900fee38743d9c7d2e893173e3a12a8ddd65dbe9d5d58c'

  url "https://github.com/pablopunk/healthi/releases/download/v#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi/releases.atom',
          checkpoint: '6711d5514ea607a18208bfa2846d3372701b0cf2a5f6f2c8fe6d5cdc9fe7c5ca'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end

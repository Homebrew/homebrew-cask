cask 'healthi' do
  version '3.1.0'
  sha256 'bb12bb70fda7b9e5b17c008fcd58ee397729ee29395b6b94514473e509849f2b'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '6435367daee2e5fd74cf44142da3dd98664cebbe2ff49baf3ed73abc5a855f86'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi-app.app'
end

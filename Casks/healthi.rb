cask 'healthi' do
  version '3.1.0'
  sha256 'bb12bb70fda7b9e5b17c008fcd58ee397729ee29395b6b94514473e509849f2b'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi-app.app'
end

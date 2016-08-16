cask 'lima' do
  version '1.1.0'
  sha256 '7eea597002a5c3087c6f99a780bc19c37efc4d056a86995b6a926007c3f0920b'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'
  license :gratis

  app 'Lima.app'
end

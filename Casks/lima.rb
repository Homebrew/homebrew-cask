cask 'lima' do
  version '1.4.0'
  sha256 '022e1a27d06257be2d30882d11734a3811cbc10a3132b6ee84d4f657f8de2a97'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end

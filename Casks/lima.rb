cask 'lima' do
  version '1.0.0'
  sha256 '1078d3037d91ad5abb4aaecad19dd972f35f6787cfb5344c8c60ffb5a6cb2556'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'
  license :gratis

  app 'Lima.app'
end

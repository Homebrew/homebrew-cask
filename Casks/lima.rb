cask 'lima' do
  version '1.4.1'
  sha256 'f8d94837746deb73aaf1bf33102955f3bbf0ef3f0402b0a7cd1bd33b69f63c3a'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end

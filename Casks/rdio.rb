cask :v1 => 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'https://www.rdio.com/media/static/desktop/mac/appcast.xml'
  name 'Rdio'
  homepage 'https://www.rdio.com'
  license :gratis

  app 'Rdio.app'
end

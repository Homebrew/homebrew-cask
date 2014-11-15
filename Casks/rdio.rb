cask :v1 => 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'http://www.rdio.com/media/static/desktop/mac/appcast.xml'
  homepage 'http://www.rdio.com'
  license :unknown

  app 'Rdio.app'
end

cask :v1 => 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'http://www.rdio.com/media/static/desktop/mac/appcast.xml'
  homepage 'http://www.rdio.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Rdio.app'
end

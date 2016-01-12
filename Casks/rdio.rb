cask 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'https://www.rdio.com/media/static/desktop/mac/appcast.xml',
          :sha256 => '14518307ce4096df60267fc935656c7d940c90073f454f100eb986e39ddf6b5a'
  name 'Rdio'
  homepage 'https://www.rdio.com'
  license :gratis

  app 'Rdio.app'
end

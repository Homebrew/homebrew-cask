cask 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'https://www.rdio.com/media/static/desktop/mac/appcast.xml',
          :sha256 => 'a4437e0520fa2e700d054c63edbc2b3494aaa7e141e1d99b6ae3d83a50a8fca3'
  name 'Rdio'
  homepage 'https://www.rdio.com'
  license :gratis

  app 'Rdio.app'
end

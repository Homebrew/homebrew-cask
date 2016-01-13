cask 'rdio' do
  version :latest
  sha256 :no_check

  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'https://www.rdio.com/media/static/desktop/mac/appcast.xml',
          :checkpoint => 'b0b8bcdb83beea548c0fdf3ab7da0274c0be661e39a6c881a3a92634226d1332'
  name 'Rdio'
  homepage 'https://www.rdio.com'
  license :gratis

  app 'Rdio.app'
end

cask 'cinebench' do
  version 'R20'
  sha256 '415eb2d477bbdd4a1228f16ed01cc0374b21624c5a54a0179f0ffc9c92cd2c8b'

  url "https://http.maxon.net/pub/cinebench/Cinebench#{version}.dmg"
  name 'Cinebench'
  homepage 'https://www.maxon.net/products/cinebench/'

  depends_on macos: '>= :el_capitan'

  app 'Cinebench.app'

  uninstall quit: 'net.maxon.cinebench'

  zap trash: [
               '~/Documents/MAXON',
               '~/Library/Caches/net.maxon.cinebench',
               '~/Library/Caches/net.maxon.cinema4d',
               '~/Library/Preferences/MAXON',
               '~/Library/Saved Application State/net.maxon.cinebench.savedState',
             ]
end

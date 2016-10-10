cask 'debookee' do
  version '5.2.1'
  sha256 '03ff1dd7bc3f52facc31ae436b9974524b627cf3fe8e4938dc5de2a63db88e56'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '281a8310d97ab8c227ac534f6b98d47c27a9aee506ca166298d0d8f0a05b3eb4'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'

  app "Debookee #{version}/Debookee.app"
end

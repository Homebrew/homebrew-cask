cask 'pokemon-reborn' do
  version '18.4'
  sha256 '09cfe05da7b0194905a209cc70f5c33dcb26afc0e83a54d0f19a93e487d3ae12'

  url "https://www.rebornevo.com/downloads/Reborn#{version}%204%20Fruits.zip"
  appcast 'https://www.rebornevo.com/pr/download/'
  name 'Pokemon Reborn'
  homepage 'https://www.rebornevo.com/'

  app 'Pokemon Reborn.app'
end

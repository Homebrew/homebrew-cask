cask 'pokemon-reborn' do
  version '18.4.2'
  sha256 'fe8858e6890c00d9ee750fdbc63bae7a8ca765bcdfd56885b4b9fc6ed6fce393'

  url "https://www.rebornevo.com/downloads/Reborn#{version}%204%20Fruits.zip"
  appcast 'https://www.rebornevo.com/pr/download/'
  name 'Pokemon Reborn'
  homepage 'https://www.rebornevo.com/'

  app 'Pokemon Reborn.app'
end

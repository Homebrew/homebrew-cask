cask 'boxofsnoo-fairmount' do
  version '1.1.3'
  sha256 '0a775f48595ce0c9d0eead76b6d50ab190815cd4ce0e80017f318226e00a5c0e'

  url "https://github.com/downloads/pmetzger/Fairmount/Fairmount-#{version}.dmg"
  name 'Fairmount'
  homepage 'https://github.com/BoxOfSnoo/Fairmount'
  license :gpl

  app 'Fairmount.app'
end

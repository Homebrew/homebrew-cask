cask 'mudlet' do
  version '3.14.0'
  sha256 'f9f7423a80cfa69f0b280ec5a137358ac170112122f4e8661ef8249ad9edae7d'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end

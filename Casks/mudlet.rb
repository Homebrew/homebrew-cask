cask 'mudlet' do
  version '3.16.1'
  sha256 'e88981bf81038452f884c128c825b91bac19c5fa2739ac88065ef9a5687a3b61'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end

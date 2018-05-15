cask 'abyss-web-server' do
  version 'x1'
  sha256 '1df93374340a939c9bdb34e39eef06a317c7c1240d119784f5f75773f3e9da4c'

  url "https://aprelium.com/data/abws#{version}.dmg"
  name 'Abyss Web Server'
  homepage 'https://aprelium.com/abyssws/'

  app 'Abyss Web Server/Abyss Web Server.app'
end

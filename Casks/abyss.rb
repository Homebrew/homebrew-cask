cask 'abyss' do
  version 'x1'
  sha256 '2130e3da4d97c71d2c932261f51ed31cbb3bcadfc600db5eb6b7f646ccf31707'

  url "https://aprelium.com/data/abws#{version}.dmg"
  name 'Abyss Web Server'
  homepage 'https://aprelium.com/abyssws/'

  app 'Abyss Web Server/Abyss Web Server.app'
end

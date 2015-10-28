cask :v1 => 'guild-wars-2' do
  version :latest
  sha256 :no_check

  # it's the official cdn for guild wars 2
  url 'http://s3.amazonaws.com/gw2cdn/client/branches/Gw2Setup.dmg'
  name 'Guild Wars 2'
  homepage 'https://www.guildwars2.com/'
  license :gratis

  installer :manual => 'Guild Wars 2 Installer.app'
end

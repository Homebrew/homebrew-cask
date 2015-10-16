cask :v1 => 'discord' do
  version '0.0.231'
  sha256 '78da63758a567c3c12ff5e138b4613096119f66adb5fce6fb530bb50891c1374'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord.app'
end

cask 'discord' do
  version '0.0.236'
  sha256 '17b747ee4289cc792ad3ff5cf582cf2729323ddfdc733c0839cc2dd5a8e49c45'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord.app'
end

cask 'discord' do
  version '0.0.235'
  sha256 'c98b2bd4681719d5faa2f7c17d92d6e712b7f64257ff6bfa00d8ae2b59aea7d0'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord.app'
end

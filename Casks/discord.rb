cask 'discord' do
  version '0.0.233'
  sha256 '902e6b34733270b54dd4d91d955d2cd61ed9b52a8a6863ea1af2864926ffc65d'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord.app'
end

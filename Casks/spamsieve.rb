cask 'spamsieve' do
  version '2.9.28'
  sha256 '4a33813d05de530b686374815622c0d3629f2ae28c68e05f7adeb0378945ce96'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

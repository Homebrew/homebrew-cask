cask 'spamsieve' do
  version '2.9.29'
  sha256 '750fd469d1c5049d461c03fbab0fc91486eb0bb08c46f96248d3efe95e53e4de'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

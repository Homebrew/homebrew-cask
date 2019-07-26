cask 'spamsieve' do
  version '2.9.36'
  sha256 '5f42dfbc1b3e999bb185c0e8cef02e05de4e4077df4f96df5e0db11cac18f2d9'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

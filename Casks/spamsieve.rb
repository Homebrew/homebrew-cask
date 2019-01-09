cask 'spamsieve' do
  version '2.9.35'
  sha256 'bf06986d7f6d215a30e97bca0ffecd16b9fb32fcb194a92f23a75ec7c38a62b8'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/help/version-history'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

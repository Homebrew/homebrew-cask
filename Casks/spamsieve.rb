cask 'spamsieve' do
  version '2.9.34'
  sha256 '72a209bb0b09bacf6190b086116e838ad27a5fa4996887ee5e2dee5d8cbb59d6'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/help/version-history'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

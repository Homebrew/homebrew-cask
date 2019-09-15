cask 'spamsieve' do
  version '2.9.37'
  sha256 '86b4ccb2cb4ced10d10c750e6c6d91ef25d53961be138fbc4c4c7f1bade81532'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

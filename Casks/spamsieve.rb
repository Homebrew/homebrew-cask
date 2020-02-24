cask 'spamsieve' do
  version '2.9.38'
  sha256 '2769625a211512d09d561d7adbd7bee9dae4b56563165c3958125ebed24b08c2'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

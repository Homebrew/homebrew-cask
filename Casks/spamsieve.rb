cask 'spamsieve' do
  version '2.9.33'
  sha256 '709b65bbc3b825885bc8f9fe1e43b62f43f8a24d3604e586e95e903647470b40'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

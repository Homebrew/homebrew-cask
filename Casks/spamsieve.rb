cask 'spamsieve' do
  version '2.9.32'
  sha256 '86ef68353cd8e97f4dffc1221201ef3f821bc61121f19f964ee40cc76e25990c'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

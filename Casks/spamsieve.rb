cask 'spamsieve' do
  version '2.9.31'
  sha256 '741fd523aace1c2ed07ebbb9668fa682711604f23707c427eb79ee6318ae2317'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

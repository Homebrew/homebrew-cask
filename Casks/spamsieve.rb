cask 'spamsieve' do
  version '2.9.30'
  sha256 '6f33671a430ca556948b224f5ac84d75e4b7ba9722930433b857748b9b57209a'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

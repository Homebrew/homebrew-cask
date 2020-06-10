cask 'spamsieve' do
  version '2.9.39'
  sha256 'a21ebca717449924d29eb20c33ccab96e662d4d77be903b9f8e0ea0f0d4fd7bb'

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast 'https://c-command.com/spamsieve/'
  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

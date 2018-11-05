cask 'pascom-client' do
  version '42.R34_99e005c'
  sha256 '5c5df293b5d6229f1404d1fae083faf141498c6f0159342dc7c4d9b723ee5afd'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end

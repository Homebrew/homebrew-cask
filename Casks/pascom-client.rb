cask 'pascom-client' do
  version '52.R428_589d95e'
  sha256 'a54a70d4dbfeeb26f3d383e2852e7f59ac4f45d2b8b22d67c594aac0538cff6d'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  appcast 'https://my.pascom.net/update/client/stable?_=1559037394513'
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

cask 'pascom-client' do
  version '47.R161_ca0d78b'
  sha256 'd33672bb5fefa963604cda66c8d4cdecd5c9adbcb3511a069e7212fd6fe2cc5d'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

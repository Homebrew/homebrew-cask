cask 'pascom-client' do
  version '51.R365_e50571e'
  sha256 'ac823d6c7c1191c088c51477bfb59c51c5418f4ae92de1393ac934431bcbc8f9'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  appcast 'https://my.pascom.net/update/client/stable?_=1559037394513'
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

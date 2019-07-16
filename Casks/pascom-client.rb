cask 'pascom-client' do
  version '53.R453_4de72d3'
  sha256 '7c970ca9fa2104801aa7b6a89a85c563f646d9d0652c1fb020015376000f4fad'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  appcast 'https://my.pascom.net/update/client/stable?_=1559037394513'
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

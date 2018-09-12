cask 'pascom-client' do
  version '7.17.10.R'
  sha256 '7c8816d1f74f14ab85de6a0401e19ed75ca1314bdc997822752ce64fa0226638'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end

cask 'pascom-client' do
  version '44.R66_ff9b83e'
  sha256 '6cae51e3a5cd9986fe96d2041d0efd8e6e09a842398564aa7e5178c152863ca8'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end

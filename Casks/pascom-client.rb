cask 'pascom-client' do
  version '7.18.00.R'
  sha256 'd7ba387aeae826c5e7c229cdf272ec623a8e16ab9dfb22dbf4256888558b98cb'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end

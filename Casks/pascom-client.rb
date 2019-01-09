cask 'pascom-client' do
  version '45.R93_9b6cae3'
  sha256 'ecdb66e7779ac5394c5b35ac9d5f2303610393756ca0fa8b2c6bb57fee4f50bc'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end

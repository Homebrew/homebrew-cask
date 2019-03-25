cask 'pascom-client' do
  version '49.R265_fd7caf5'
  sha256 '50fa2a50e1ec854dd465aad652103911724aa797eba2048fdfa2118b81e30687'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

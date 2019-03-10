cask 'pascom-client' do
  version '48.R196_05d7518'
  sha256 'e91836f6ee55c9160ed1043c0d3dc64e1158184b2f366f5ed97e3c3ea39f3899'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end

cask 'garagesale' do
  version '8.0.5'
  sha256 'e65654afce4e3e6c3cf0bcefd16a2ef3beccb3cbdf6c4bf845177eac09f67a71'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

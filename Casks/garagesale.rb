cask 'garagesale' do
  version '8.0.8'
  sha256 '3310d2db691a52b32a8444ec59884ccdee24e2722c676f077e84093755b626e2'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

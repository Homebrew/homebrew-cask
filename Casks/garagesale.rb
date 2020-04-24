cask 'garagesale' do
  version '8.0.12'
  sha256 '70560ab6ff255b3a573ab5d5ae4ce405f5d9e9a446a5984d7ce93f71e0d24996'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

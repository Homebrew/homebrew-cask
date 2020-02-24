cask 'garagesale' do
  version '8.0.11'
  sha256 'c4df96e52d0ac60f199977baab2999cc32101b007a01b384c5ca912818067fb5'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

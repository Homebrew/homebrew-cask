cask 'garagesale' do
  version '8.0.6'
  sha256 'bc409ce760a3b93be94a71477e1aec2e36a9540150f39a1309897ab8c1d89efe'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

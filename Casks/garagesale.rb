cask 'garagesale' do
  version '8.0.10'
  sha256 'ba155e04f68f580d038aed8f46789870dc47dc4f9833926236c4e304fb910379'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

cask 'garagesale' do
  version '8.0.7'
  sha256 'c796d9cb1cd38e7c5b038091d8c01b57d38f31eed9ed862194d4e9e57b016822'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

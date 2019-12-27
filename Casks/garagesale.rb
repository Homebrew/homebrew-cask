cask 'garagesale' do
  version '8.0.9'
  sha256 'da7d91f3604b096157ab74b126e54d4ad1d59957c88bb3552ea436028de64e9a'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

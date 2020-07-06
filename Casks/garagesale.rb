cask 'garagesale' do
  version '8.1.1'
  sha256 '988c1bea7966ebda59d9acea0005053ba5622bea264f5244c36cbb6592fb2eb3'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

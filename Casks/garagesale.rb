cask 'garagesale' do
  version '8.1'
  sha256 '36bd019e92739610af67383f4a799b86dce1877eb2d8dac33f6561828b2c6219'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

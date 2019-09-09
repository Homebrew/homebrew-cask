cask 'garagesale' do
  version '7.0.19'
  sha256 '134ede092a9c72c88db81fac7f49bdb0791dc8318c7b960f7214c08ee0bcb772'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/cgi-bin/version_check.cgi?APPLICATION=GarageSale&APP_BUNDLE_VERSION=#{version.major}00"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  app 'GarageSale.app'
end

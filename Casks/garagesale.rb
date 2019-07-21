cask 'garagesale' do
  version '7.0.18'
  sha256 '52c1bcbf249c3f2b42dd1eaf69e7028169bc9968d4111f43dbd706356ba5b77f'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/cgi-bin/version_check.cgi?APPLICATION=GarageSale&APP_BUNDLE_VERSION=#{version.major}00"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  app 'GarageSale.app'
end

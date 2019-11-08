cask 'garagesale' do
  version '8.0.3'
  sha256 '17e739513616c955d164ba05b5ec8edb016e2103c0db0d23508ec5864ca6ab81'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/cgi-bin/version_check.cgi?APPLICATION=GarageSale&APP_BUNDLE_VERSION=#{version.major}00"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

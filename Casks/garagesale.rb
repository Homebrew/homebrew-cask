cask 'garagesale' do
  version '8.0'
  sha256 'd57014d1cdcbc848a7716cf64fc2e865a9f97cca8e962930729cb9815abcbe7f'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/cgi-bin/version_check.cgi?APPLICATION=GarageSale&APP_BUNDLE_VERSION=#{version.major}00"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

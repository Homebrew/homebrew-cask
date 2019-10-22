cask 'garagesale' do
  version '7.0.20'
  sha256 '90caedc5d7d040a98c4f14f9d31af0850d1cd9c9e8ab587476b3ae6dca34b809'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/cgi-bin/version_check.cgi?APPLICATION=GarageSale&APP_BUNDLE_VERSION=#{version.major}00"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  app 'GarageSale.app'
end

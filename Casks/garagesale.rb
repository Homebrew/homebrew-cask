cask 'garagesale' do
  version '8.0.4'
  sha256 'd0d07fd6dbc64dd9f4d1182dee75e57cfa201a7a8ae4a7930cb906e8bc5cfa00'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  depends_on macos: '>= :sierra'

  app 'GarageSale.app'
end

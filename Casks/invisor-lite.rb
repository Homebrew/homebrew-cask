cask 'invisor-lite' do
  version '3.9'
  sha256 'f824e101c43339abc2ccca6af7e58b2acce1844b12d170f64ed032e189137772'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  depends_on macos: '>= :lion'

  app 'Invisor Lite.app'
end

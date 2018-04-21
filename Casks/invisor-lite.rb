cask 'invisor-lite' do
  version '3.9'
  sha256 'f824e101c43339abc2ccca6af7e58b2acce1844b12d170f64ed032e189137772'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml',
          checkpoint: 'f1b23d0ba85a82f17529fe77846a567ca231756c409e814261115ac792a86706'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  depends_on macos: '>= :lion'

  app 'Invisor Lite.app'
end

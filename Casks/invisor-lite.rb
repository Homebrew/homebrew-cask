cask 'invisor-lite' do
  version '3.10'
  sha256 'e3a1500759f6759922d1b248ace706fd3d30dedbeb1da1991d7b535cf1410360'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  depends_on macos: '>= :lion'

  app 'Invisor Lite.app'
end

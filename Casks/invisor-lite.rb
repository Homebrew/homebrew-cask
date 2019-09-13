cask 'invisor-lite' do
  version '3.13'
  sha256 'c6ce3bd8bc12fed3c5b6805939387bf2633ddfd141d70c2e7ca0b8a98e7918c2'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  app 'Invisor Lite.app'
end

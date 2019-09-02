cask 'invisor-lite' do
  version '3.11'
  sha256 'a888e73b403065d6fb6d4ed5d55b28a1fd931974de5e61fa02bf403ba1a83ec8'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  app 'Invisor Lite.app'
end

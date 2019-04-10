cask 'alfaview' do
  version '7.37314'
  sha256 'ab09099c5fbc9f9b570aa15a4f79e7ad29115a2d4a5a8c2ac61e02c5605ca7d0'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

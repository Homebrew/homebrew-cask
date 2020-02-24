cask 'alfaview' do
  version '8.1.5'
  sha256 'd9a4dc59a7ea278c038d731f5dfbf47160db407414555f8195717c3eb4d5d536'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

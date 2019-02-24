cask 'alfaview' do
  version '7.33338'
  sha256 '19f3fc549fffec13626c24194fe498a1743b269d2a8834eb928aaffa34ec5733'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

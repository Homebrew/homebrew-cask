cask 'alfaview' do
  version '7.44828'
  sha256 '2e984149e5510586bc259a9578a7896a7b36ea0e977b1a4458ee86b01463520d'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

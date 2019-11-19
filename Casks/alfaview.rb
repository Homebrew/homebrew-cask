cask 'alfaview' do
  version '7.50429'
  sha256 'd483f079f09eec8e1b7913a638a494c1b88bea08ccb5a8a6f1c2ff98733fd09a'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

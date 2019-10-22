cask 'alfaview' do
  version '7.48288'
  sha256 '16b116fa35534265474dbd664c48228b24ad92bf2b0e235922e2e5cff7b6e520'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

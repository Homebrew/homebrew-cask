cask 'alfaview' do
  version '7.51964'
  sha256 'ce45be5b71abb4f46289d2909cc725aec7d285ec85e41963611c78f49c3b2697'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

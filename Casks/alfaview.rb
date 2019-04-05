cask 'alfaview' do
  version '7.35069'
  sha256 '07fef504f827a1cf2e4b287e7a05508e5fd840ade2c6c58920a83edafd1f65bd'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

cask 'alfaview' do
  version '8.3.3'
  sha256 'b75d3b5c1656a1128892facbeace44202d3093e8a5d20fe0d76d8fc231090d53'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://production-alfaview-assets.alfaview.com/stable/mac/version.info'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

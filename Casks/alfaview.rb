cask 'alfaview' do
  version '8.4.0'
  sha256 'e17c79f6f641acc6fdbf53bbf4351719ec1b02c1d6d3155aa9c9c2af873258a5'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://production-alfaview-assets.alfaview.com/stable/mac/version.info'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

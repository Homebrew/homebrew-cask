cask 'alfaview' do
  version '7.43036'
  sha256 'b7f8ba2602875d06f57f69846d0bde58216c5380e2d3620970a5607a02bb48e8'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

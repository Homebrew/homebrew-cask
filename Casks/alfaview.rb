cask 'alfaview' do
  version '8.6.4'
  sha256 'bed6cb5fd1981a6bddfb38a40a3b144201fc625f2fcbf86bf2a6c8ddabab940f'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://production-alfaview-assets.alfaview.com/stable/mac/version.info'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

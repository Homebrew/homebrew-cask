cask 'alfaview' do
  version '8.1.4'
  sha256 '681426e9a61bd1c89f031997e13412ebab505eac6c25ce83646959bd8bce37e7'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

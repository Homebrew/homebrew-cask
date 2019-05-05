cask 'alfaview' do
  version '7.39311'
  sha256 '5012484e0df944c77791e02924cf7392857cb7140a9f491ad4fa46307781f0cc'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

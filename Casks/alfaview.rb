cask 'alfaview' do
  version '8.1.2'
  sha256 'b0f6e9374414f807c79cd9dadf86c08890a41dfd0d01202667e21574a48d8175'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

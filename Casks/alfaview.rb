cask 'alfaview' do
  version '7.41015'
  sha256 '1a35c58ac901716d372a905d26c6739424509e23ed10d7718dab76bc1a7fc9a3'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

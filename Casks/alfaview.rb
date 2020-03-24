cask 'alfaview' do
  version '8.2.1'
  sha256 '57c7451cd7db1036c39fadb5715c2ab9ac7a2acff155f3d5632c57cafe4e5652'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

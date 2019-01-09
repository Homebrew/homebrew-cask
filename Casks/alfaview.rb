cask 'alfaview' do
  version '7.31327'
  sha256 'fc8cbc57ba42842d5bc13a58d802429b0d5f22504c89981cb560fbb066b9170c'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end

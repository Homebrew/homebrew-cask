cask 'media-center' do
  version '22.00.88'
  sha256 '6f6776197f7034f73d131ebe73c95b0fadfc889a067f8933cd9e543cfd9051f0'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

  app "Media Center #{version.major}.app"

  zap delete: '~/Library/Application Support/J River/'
end

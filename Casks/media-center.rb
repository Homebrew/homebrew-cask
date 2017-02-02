cask 'media-center' do
  version '22.00.54'
  sha256 'fc85bf66f75ce640936f1e21fc11c0786f2b43811f2082a4a4984b42676c337b'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

  app "Media Center #{version.major}.app"

  zap delete: '~/Library/Application Support/J River/'
end

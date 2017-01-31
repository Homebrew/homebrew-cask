cask 'jriver-media-center' do
  version '22.0.54'
  sha256 'fc85bf66f75ce640936f1e21fc11c0786f2b43811f2082a4a4984b42676c337b'

  url 'http://files.jriver.com/mediacenter/channels/v22/stable/MediaCenter220054.dmg'
  name 'JRiver Media Center'
  name 'JRiver'
  name 'Media Center'
  homepage 'https://www.jriver.com/'

  app 'Media Center 22.app'

  zap delete: '~/Library/Application Support/J River/'
end

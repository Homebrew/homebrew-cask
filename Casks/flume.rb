cask 'flume' do
  version '2.7'
  sha256 '77eb2de6f83dd9f2ee5e1e5a5dd84adf00c67555e54558ef186c16a2dc9ccc14'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '5a30ef3b0be22eeb3f047ab72e997643a2e9b23f63b54ad409618c056b2d3efc'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end

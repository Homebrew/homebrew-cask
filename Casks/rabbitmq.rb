cask 'rabbitmq' do
  version '3.6.0-build.2'
  sha256 '25b9bc90bd511285fdbac4be6f6ea44a039e246960b3d70d9e0cb46d27095d18'

  # github.com/jpadilla/rabbitmqapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/rabbitmqapp/releases/download/#{version}/RabbitMQ.zip"
  appcast 'https://github.com/jpadilla/rabbitmqapp/releases.atom',
          checkpoint: '987cafe8e1c71f6932ff80183d2536a32beefad3f382fe0ca5c943fcc7b54e01'
  name 'RabbitMQ'
  homepage 'https://jpadilla.github.io/rabbitmqapp/'
  license :mit

  app 'RabbitMQ.app'

  zap delete: [
                '~/Library/Caches/io.blimp.RabbitMQ',
                '~/Library/Preferences/io.blimp.RabbitMQ.plist',
              ]
end

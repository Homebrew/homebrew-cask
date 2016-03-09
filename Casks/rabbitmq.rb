cask 'rabbitmq' do
  version '3.6.0-build.3'
  sha256 '19c9166bad6846cdee92b29f8e22e868a9db41e18565cb6117b20f2b217188ae'

  # github.com/jpadilla/rabbitmqapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/rabbitmqapp/releases/download/#{version}/RabbitMQ.zip"
  appcast 'https://github.com/jpadilla/rabbitmqapp/releases.atom',
          checkpoint: '7515bf959b73b956ceb967351c7e299cbb3668a53d35f9c770eb72e00d93ced6'
  name 'RabbitMQ'
  homepage 'https://jpadilla.github.io/rabbitmqapp/'
  license :mit

  app 'RabbitMQ.app'

  zap delete: [
                '~/Library/Caches/io.blimp.RabbitMQ',
                '~/Library/Preferences/io.blimp.RabbitMQ.plist',
              ]
end

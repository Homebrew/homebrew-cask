cask 'rabbitmq' do
  version '3.6.1-build.1'
  sha256 '1838afcece704ab1d23645d5d44953b809474f1f67ec4b18f3f98d440e5b5aad'

  # github.com/jpadilla/rabbitmqapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/rabbitmqapp/releases/download/#{version}/RabbitMQ.zip"
  appcast 'https://github.com/jpadilla/rabbitmqapp/releases.atom',
          checkpoint: '90cec6b712cb208b42599676a94d9462a60e92c7501884e49eb9a01284dcd3a3'
  name 'RabbitMQ'
  homepage 'https://jpadilla.github.io/rabbitmqapp/'

  app 'RabbitMQ.app'

  zap delete: [
                '~/Library/Caches/io.blimp.RabbitMQ',
                '~/Library/Preferences/io.blimp.RabbitMQ.plist',
              ]
end

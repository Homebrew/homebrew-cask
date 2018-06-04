cask 'bee' do
  version '3.1.1,5438'
  sha256 '605deb3440ec854e61f8e668c0e9cd2270d65e7fe928dae48c7239895c8c9a45'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/bee/appcast.xml',
          checkpoint: '4aeb5699a754599fd9c1c09917c7ea5890366eb6566fcbb413ca49fc4e8e887b'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'

  zap trash: [
               '~/Library/Application Scripts/io.neat.Bee',
               '~/Library/Application Scripts/io.neat.Bee-Mutator',
               '~/Library/Application Scripts/io.neat.Bee-Updater',
               '~/Library/Caches/io.neat.Bee',
               '~/Library/Containers/io.neat.Bee',
               '~/Library/Containers/io.neat.Bee-Mutator',
               '~/Library/Containers/io.neat.Bee-Updater',
             ]
end

cask 'bee' do
  version '3.0.21,5403'
  sha256 'ebe55846bc8d587be4b6a918351de9e04c0e4256af9da88b18b7b1ae664cb64f'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/bee/appcast.xml',
          checkpoint: '28d29701761a783c419b20c886ef8b446fa77c103db06dd8199dd90772478fb1'
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

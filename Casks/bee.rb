cask 'bee' do
  version '3.1,5423'
  sha256 '4df98ace793d92f37773e55ef64843e32d0160dce57ba6615d822f5acb173c2e'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/bee/appcast.xml',
          checkpoint: '4368144ce7ddc32bb3be47a0a510d1fe6ab99f95b2e22ce3b8de57e94e4058c2'
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

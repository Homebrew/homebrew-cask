cask 'bee' do
  version '3.1.3,5462'
  sha256 '7d66d70b4a7cce6170d5480f4c19b91101dfcbacf4a2ef1119838f1557d1956b'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/bee/appcast.xml'
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

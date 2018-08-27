cask 'bee' do
  version '3.1.4,5464'
  sha256 '32278ec30960b2d8932adba655649ee653c551e077153f90d4258fdf1b63fc29'

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

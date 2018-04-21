cask 'bee' do
  version '3.0.18,5379'
  sha256 'ad2f950642399619a9b9b40f0b136e1a7b1ad6ba5a2635e1d5bc673943e47de9'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version.after_comma}-#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/bee/appcast.xml',
          checkpoint: 'dc617cf42480fa8e4be9b43e3d3c89f1d6783002318be4c254569bc7a8205053'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'

  zap trash: [
               '~/Library/Application Scripts/io.neat.Bee',
               '~/Library/Application Scripts/io.neat.Bee-Mutator',
               '~/Library/Application Scripts/io.neat.Bee-Updater',
               '~/Library/Containers/io.neat.Bee',
               '~/Library/Containers/io.neat.Bee-Mutator',
             ]
end

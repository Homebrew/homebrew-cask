cask :v1 => 'chameleon-ssd-optimizer' do
  version '0.9.9g'
  sha256 'd02749075f205919d2803468906c773f27d362eaf9d54f5cca06166cb7050573'

  url "http://chameleon.alessandroboschini.com/download/ChameleonSSDOptimizer#{version.delete('.')}.zip"
  appcast 'http://chameleon.alessandroboschini.com/sparkle/profileInfo.php'
  name 'Chameleon SSD optimizer'
  homepage 'http://chameleon.alessandroboschini.com/'
  license :gratis

  app 'Chameleon SSD Optimizer.app'

  zap :delete => [
                  '~/Library/Preferences/aletest.Chameleon-SSD-Optimizer.plist',
                  '~/Library/Caches/aletest.Chameleon-SSD-Optimizer/',
                 ]
end

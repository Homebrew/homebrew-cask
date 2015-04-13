cask :v1 => 'chameleon-ssd-optimizer' do
  version :latest
  sha256 :no_check

  url 'http://chameleon.alessandroboschini.com/cdownload.php'
  appcast 'http://chameleon.alessandroboschini.com/sparkle/profileInfo.php'
  name 'Chameleon SSD optimizer'
  homepage 'http://chameleon.alessandroboschini.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chameleon SSD Optimizer.app'

  zap :delete => [
                  '~/Library/Preferences/aletest.Chameleon-SSD-Optimizer.plist',
                  '~/Library/Caches/aletest.Chameleon-SSD-Optimizer/',
                 ]
end

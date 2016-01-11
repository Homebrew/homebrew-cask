cask 'snapheal-pro' do
  version '1.5.1118'
  sha256 'b6b46a70f270872a5b9cd32f8366070227af4e70d37b054b3b79280d425b2aa2'

  # amazonaws.com is the official download host per the appcast feed
  url "http://creativekit.s3.amazonaws.com/SnaphealCK/SnaphealCKNA_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml',
          :sha256 => '3c29cd133345294e0f073a1d02df5339dd69facee830d3bfc77fa7f3be79739d'
  name 'Macphun Snapheal Pro'
  homepage 'https://macphun.com/snapheal/'
  license :commercial

  app 'Snapheal Pro.app'

  uninstall :quit => 'com.macphun.snaphealpro'

  zap :delete => [
                   '~/Library/Caches/com.macphun.snaphealpro',
                   '~/Library/Application Support/Snapheal Pro',
                   '~/Library/Preferences/com.macphun.snaphealpro.plist',
                 ]
end

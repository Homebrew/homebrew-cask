cask 'snapheal-pro' do
  version '1.5.1118'
  sha256 'b6b46a70f270872a5b9cd32f8366070227af4e70d37b054b3b79280d425b2aa2'

  # amazonaws.com is the official download host per the appcast feed
  url "https://creativekit.s3.amazonaws.com/SnaphealCK/SnaphealCKNA_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml',
          :checkpoint => '69d15ecf7e6c9f21b7a800f516702b7cff629c1f3ba8c61d1cde1845e30d2fe9'
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

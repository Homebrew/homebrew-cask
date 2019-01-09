cask 'snapheal-ck' do
  version '1.7.1200'
  sha256 'b91c8b67bea96d5b95afcdcd55b76093fd2bce84fbc15b6272ac179c3da62a9f'

  # amazonaws.com/SnaphealCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/SnaphealCK/SnaphealCKNA_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'https://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml'
  name 'Macphun Snapheal CK'
  homepage 'https://macphun.com/snapheal'

  app 'Snapheal CK.app'

  uninstall quit: 'com.macphun.snaphealpro'

  zap trash: [
               '~/Library/Application Support/Snapheal CK',
               '~/Library/Caches/com.macphun.snaphealpro',
               '~/Library/Preferences/com.macphun.snaphealpro.plist',
             ]
end

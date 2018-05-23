cask 'reqlpro' do
  version '0.2.1'
  sha256 '579f2669730ce404509fe0f78608a6d85e3a01e8131ca5566ba78e62bd52d309'

  # amazonaws.com/reqlpro was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/reqlpro/ReQLPro_#{version}.dmg"
  appcast 'https://reqlpro.com/download/',
          checkpoint: '9c726f643dbe5437a9555ddd37eb6bbddac5fdee886ab2d4da0b7c10383259ef'
  name 'ReQLPro'
  homepage 'https://reqlpro.com/'

  app 'ReQLPro.app'

  zap trash: [
               '~/Library/Application Support/ReQLPro',
               '~/Library/Preferences/com.electron.reqlpro.helper.plist',
               '~/Library/Preferences/com.electron.reqlpro.plist',
               '~/Library/Saved Application State/com.electron.reqlpro.savedState',
             ]
end

cask 'iconjar' do
  version '1.5.1,23478:1502744181'
  sha256 'afb6e99284816e918c283ddae31a8b1726b12a6511af7391e8b062fef41001a0'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: '52d71a83f754582fe7c2491204fe5778a64d607d5d7e85f6bc7fd266f06967f1'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  auto_updates true

  app 'IconJar.app'

  zap delete: [
                '/Users/Shared/IconJar',
                '~/Library/Application Support/IconJar',
                '~/Library/Preferences/com.iconjar.iconjar.plist',
              ]
end

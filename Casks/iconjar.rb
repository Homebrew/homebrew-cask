cask 'iconjar' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.iconjar.iconjar/Iconjar.dmg'
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: 'ac2cdc02fcba9c9f5e38b379c93a17a86b5fd618d52ef9c1a7b0527dd1531997'
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

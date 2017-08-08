cask 'iconjar' do
  version '1.5.0,23382:1501437355'
  sha256 '51b024ae70a448ca45e6e851e8d7f0f6da88b67f4dcc93dfbc5ba18a5f41274e'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: 'fb5f4480508778dd008a650894156f5bc0d5f241ac85a4b34943e02b8ed58e46'
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

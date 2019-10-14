cask 'iconjar' do
  version '1.13.3,30290:1570994768'
  sha256 'fee2852faa14620b850c4213336b607f5e6bc77a56a576b6a2fdef1abd2cb96b'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  auto_updates true

  app 'IconJar.app'

  zap trash: [
               '/Users/Shared/IconJar',
               '~/Library/Application Support/IconJar',
               '~/Library/Preferences/com.iconjar.iconjar.plist',
             ]
end

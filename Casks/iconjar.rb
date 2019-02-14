cask 'iconjar' do
  version '1.13.1,30275:1548623927'
  sha256 '41544937969f8cb70640b4226b1a67b4c5ae2c4cc7100fbbc734596f09dcab95'

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

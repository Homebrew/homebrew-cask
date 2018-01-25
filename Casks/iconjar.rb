cask 'iconjar' do
  version '1.7.0,24306:1505718850'
  sha256 '86e090dc53129ac60115dd9b0f1a1ae611bd0c7b1c4ccf2b56014f6ac7f28709'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: '708aae86c27058420ab69307458cfa2715a834dbdf3e661e43c7fa8cd7722c45'
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

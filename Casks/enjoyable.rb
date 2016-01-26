cask 'enjoyable' do
  version '1.2'
  sha256 'f455b951ba8cf7c8426756ea6479e2232442508d8190d7ec2675266bf7ff14f6'

  url "https://yukkurigames.com/enjoyable/Enjoyable-#{version}.zip"
  appcast 'https://yukkurigames.com/enjoyable/appcast.xml',
          checkpoint: 'bca0054ee381155cd8c4e64191c3b7d7c8142ac1af91a029bab84a66e73e27ed'
  name 'Enjoyable'
  homepage 'https://yukkurigames.com/enjoyable/'
  license :gratis

  app 'Enjoyable.app'

  zap delete: '~/Library/Preferences/com.yukkurigames.Enjoyable.plist'
end

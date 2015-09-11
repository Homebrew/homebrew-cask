cask :v1 => 'enjoyable' do
  version '1.2'
  sha256 'f455b951ba8cf7c8426756ea6479e2232442508d8190d7ec2675266bf7ff14f6'

  url "https://yukkurigames.com/enjoyable/Enjoyable-#{version}.zip"
  name 'Enjoyable'
  appcast 'https://yukkurigames.com/enjoyable/appcast.xml',
          :sha256 => '881f8e727e3d9b3244fc9b9530d24301306ffb21afd98c970c4cc5e7bcb1489c'
  homepage 'https://yukkurigames.com/enjoyable/'
  license :gratis

  app 'Enjoyable.app'

  zap :delete => '~/Library/Preferences/com.yukkurigames.Enjoyable.plist'
end

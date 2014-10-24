class Enjoyable < Cask
  version '1.1'
  sha256 '2083f6eb38d0b02fb3d521b319c76775dc8bcf0e07ff2f24b049ebe61a5e4c94'

  url "https://yukkurigames.com/enjoyable/Enjoyable-#{version}.zip"
  appcast 'http://yukkurigames.com/enjoyable/appcast.xml',
          :sha256 => '68700e3fc295bf7ebbd8637c0981c0e5389637b3b72f03e8d6a93776d867220e'
  homepage 'http://yukkurigames.com/enjoyable/'
  license :unknown

  app 'Enjoyable.app'
  zap :delete => '~/Library/Preferences/com.yukkurigames.Enjoyable.plist'
end

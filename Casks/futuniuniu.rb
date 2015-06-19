cask :v1 => 'futuniuniu' do
  version '3.3.0_061701'
  sha256 '45ae7a81f3533e5aa48853dd0d27fa6c75389ae98fe578b02a57666a27f2cf5f'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}.dmg"
  name '富途牛牛'
  name 'FutuNiuniu'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

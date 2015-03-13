cask :v1 => 'futuniuniu' do
  version '3.0.2_0306'
  sha256 '74eb05cb30e47cc55a7931400fa376003663fee5652d61ebd1c9a6516b57e0fc'

  url "https://www.futu5.com/client/nn/mac/FUTUNNForMac_#{version}.dmg"
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

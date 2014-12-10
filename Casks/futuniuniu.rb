cask :v1 => 'futuniuniu' do
  version '2.16.358'
  sha256 'a92df2f8c0cdc66b9f23df44885d8ee3c3b67520ee97f783f3523fbb4aaf7775'

  url 'https://www.futu5.com/client/nn/mac/FTNNForMac_2.16.358_1209.dmg'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

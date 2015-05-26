cask :v1 => 'futuniuniu' do
  version '3.2.1_050701'
  sha256 '1f3ff8538e33417453c4682cecf60d81e0e27e236ec6d8c387d779ea48a89542'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}.dmg"
  name '富途牛牛'
  name 'FutuNiuniu'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

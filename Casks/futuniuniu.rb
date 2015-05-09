cask :v1 => 'futuniuniu' do
  version '3.1.0_0416'
  sha256 '9e18b41ec55732af06c04e5fad8d1e1e49bdc4846738120b44ad82003787b1dc'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}.dmg"
  name '富途牛牛'
  name 'FutuNiuniu'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

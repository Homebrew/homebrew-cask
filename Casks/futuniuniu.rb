cask :v1 => 'futuniuniu' do
  version '3.3.1_070202'
  sha256 '4a1fbe111f86e982f51315c10e59c3cfa80d74999ce21d49c998a2a7220536d4'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}.dmg"
  name '富途牛牛'
  name 'FutuNiuniu'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

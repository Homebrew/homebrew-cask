cask :v1 => 'futuniuniu' do
  version '2.16.360'
  sha256 '29d76b841bf9f93510f4caebd632a4dab07e9faf794285fe4e0a35766db2e9dc'

  url 'https://www.futu5.com/client/nn/mac/FTNNForMac_2.16.360_1210.dmg'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

cask 'futuniuniu' do
  version '3.4.2_090201'
  sha256  '72605f586d124cac852ff670517f9c8669d3a4c60c1dfad00feedfac8f1c74bd'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}.dmg"
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end

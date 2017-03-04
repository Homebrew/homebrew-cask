cask 'futuniuniu' do
  version '4.7.2_2017010304'
  sha256 'c23ec7b35f812382abf3de1a05a12b8f22192f1c89a90fdf706c39aea5a1ea53'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}_std_release_std_officially.dmg"
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end

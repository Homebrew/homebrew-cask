cask 'futuniuniu' do
  version '4.20.4_2017112801'
  sha256 '0ade5dda7dd387527b624d61068fc8242732ff30fd28c44a6e3810f9f2733d11'

  url "https://www.futu5.com/client/nn/mac/FTNNForMac_#{version}_std_release_std_officially.dmg"
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end

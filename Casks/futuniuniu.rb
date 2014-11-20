cask :v1 => 'futuniuniu' do
  version '2.16.354'
  sha256 'f835ad85b4e0b47f25bc6e436f324dc7d5b0fa5bffe4d0af5b1889150854a1d4'

  url 'https://www.futu5.com/client/nn/mac/FTNNForMac_2.16.354_1117.dmg'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

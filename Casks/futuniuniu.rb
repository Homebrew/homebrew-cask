cask :v1 => 'futuniuniu' do
  version '3.1.0_0416'
  sha256 'ab1f4c21cc5bb879754f8cef2adab0d250cdd2b99fa8daa52ffb6762091b0ea6'

  url "https://www.futu5.com/client/nn/mac/FUTUNNForMac_#{version}.dmg"
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

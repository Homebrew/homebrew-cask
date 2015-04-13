cask :v1 => 'futuniuniu' do
  version '3.1.0'
  sha256 'afb319d434646de5f3b55cf53233a704c5a17a1235c72966ebbf05d404dba0d9'

  url 'https://www.futu5.com/client/nn/mac/FUTUNNForMac_3.1.0_0409.dmg'
  homepage 'http://www.futu5.com'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', :target => '富途牛牛.app'
end

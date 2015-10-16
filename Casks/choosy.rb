cask :v1 => 'choosy' do
  version '1.0.3'
  sha256 '87513395c94221ae9a83c787ac78f1a1028099dc9be4883e19924768a354c6ca'

  url "http://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'http://www.choosyosx.com/sparkle/feed',
          :sha256 => '6c9105f7a2d400fb6928a1b0ed2384d098ef016a319b413684723033880d1601'
  name 'Choosy'
  homepage 'http://www.choosyosx.com/'
  license :commercial

  prefpane 'Choosy.prefPane'
end

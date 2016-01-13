cask 'choosy' do
  version '1.0.3'
  sha256 '87513395c94221ae9a83c787ac78f1a1028099dc9be4883e19924768a354c6ca'

  url "http://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'http://www.choosyosx.com/sparkle/feed',
          :checkpoint => '2fad3d77c88c2c3adc6a366e61dad458c9c453eca3680239cad65b7e33e8ee73'
  name 'Choosy'
  homepage 'http://www.choosyosx.com/'
  license :commercial

  prefpane 'Choosy.prefPane'
end

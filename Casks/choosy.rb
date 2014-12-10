cask :v1 => 'choosy' do
  version '1.0.3'
  sha256 '87513395c94221ae9a83c787ac78f1a1028099dc9be4883e19924768a354c6ca'

  url "http://downloads.choosyosx.com/choosy_#{version}.zip"
  homepage 'http://www.choosyosx.com/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'Choosy.prefPane'
end

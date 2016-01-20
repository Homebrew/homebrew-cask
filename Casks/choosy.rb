cask 'choosy' do
  version '1.0.3'
  sha256 '87513395c94221ae9a83c787ac78f1a1028099dc9be4883e19924768a354c6ca'

  url "http://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'http://www.choosyosx.com/sparkle/feed',
          checkpoint: '8dabc4992f944d3b8cfe46b2b741240032b8e77b4360c3a285e318be3849bf21'
  name 'Choosy'
  homepage 'http://www.choosyosx.com/'
  license :commercial

  prefpane 'Choosy.prefPane'
end

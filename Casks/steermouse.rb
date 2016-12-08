cask 'steermouse' do
  version '5.0.2'
  sha256 '18458a8e7bf529e440457fdd6c1ae72d20840bfab6e887c6e2851f264a83caaa'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

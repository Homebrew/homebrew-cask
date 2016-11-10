cask 'steermouse' do
  version '5.0.1'
  sha256 '1e5ec23e6382533e40a5e4902dbfa44933d1e45f97dc9d1961453f7887fc36f4'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

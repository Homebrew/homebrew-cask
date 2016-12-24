cask 'steermouse' do
  version '5.0.3'
  sha256 '1e918e321bf33cd0f678c8730d4ebc3da281bc59fc32420201ad831c4015a701'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

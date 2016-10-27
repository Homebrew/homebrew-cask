cask 'steermouse' do
  version '5.0'
  sha256 'fdb858bdfe0001ce3e74213f3132c8320e0f9fc6c596f7254d9e1f11d3737d24'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

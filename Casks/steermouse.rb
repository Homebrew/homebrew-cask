cask 'steermouse' do
  version '5.0.3'
  sha256 '1e918e321bf33cd0f678c8730d4ebc3da281bc59fc32420201ad831c4015a701'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '2f5eaebe70063f0559d233c46689671634e3ad16e8aece63410795101689b917'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

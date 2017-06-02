cask 'steermouse' do
  version '5.1'
  sha256 '00a32b26a3ce04543ef820e9985b4b1d0514b83164be876b1b4f79cdb1dd29ac'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'f2c1c089d047a061b1a5498f02ecf5c6d2bd9e4f69b4e26e56ee34ff7122a468'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

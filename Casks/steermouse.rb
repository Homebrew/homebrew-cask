cask 'steermouse' do
  version '5.1'
  sha256 '00a32b26a3ce04543ef820e9985b4b1d0514b83164be876b1b4f79cdb1dd29ac'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '20ae76fd5154d1e2ebaa6892644e202e1eb7b7607c6a4412d73a32b74b9d2a0c'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

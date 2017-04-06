cask 'steermouse' do
  version '5.0.8'
  sha256 '08c6bf95b949817ab9508145c4ed714f9e39dc1617a8d013d7d0b5ca0e6567d4'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '3f73e634800e6c8f79101896b7a1c6d222aa075055694185467909415ba81d26'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

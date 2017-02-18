cask 'steermouse' do
  version '5.0.5'
  sha256 '223b44ac4898686432a03a79dd7d764fee54172b7ffd8c2063092207974bfcb3'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'ca55bb4a25acd290c7295874fe38d9146187de5cddc3ea3c5648989b07e30827'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

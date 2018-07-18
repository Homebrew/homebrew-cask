cask 'steermouse' do
  version '5.3'
  sha256 '93225f1372f865b81666734c201e11a83ed78742b0e90bf52e2e28bba439b053'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

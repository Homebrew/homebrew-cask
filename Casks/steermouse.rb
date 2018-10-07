cask 'steermouse' do
  version '5.3.2'
  sha256 '09fb20dcd306600d40006815d97a9982db79aab9fa3082fa560b2ca366e94ede'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

cask 'steermouse' do
  version '5.2.3'
  sha256 '5fa0d579fd2f0f7d9f413083e937914ce671788293e469cd9182484a4a74adf9'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

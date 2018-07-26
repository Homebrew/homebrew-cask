cask 'steermouse' do
  version '5.3.1'
  sha256 '12f5c3a31f032885676bdc42391c2f6388b64f59f3952ad5ae93a739df9e6ce9'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

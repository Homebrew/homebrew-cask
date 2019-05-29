cask 'steermouse' do
  version '5.3.7'
  sha256 '400bf0f02f50cfba06fa5320a5b9dfd078e90d0f186379d2da2529b00cb0e941'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

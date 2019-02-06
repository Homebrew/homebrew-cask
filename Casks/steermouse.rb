cask 'steermouse' do
  version '5.3.3'
  sha256 'a7018ee2549ab2f543456f8847811f495c911acb2ebaaa447900a536c2d0d382'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

cask 'steermouse' do
  version '5.3.6'
  sha256 '3d121893638149f7044807cde83f56fcf6d00fb4e9ff2474d1aed01abab8becd'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

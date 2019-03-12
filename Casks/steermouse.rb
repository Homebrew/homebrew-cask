cask 'steermouse' do
  version '5.3.5'
  sha256 '96f580e93c21318a1af15e250f48f2157bad5570a0dd4593d3c15db94c7b4ec5'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

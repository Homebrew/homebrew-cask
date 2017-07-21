cask 'steermouse' do
  version '5.1.3'
  sha256 '7b9f2bc0206a1f66df480b0a4d8eee0d22d08a3a4581d3110a6c90f7e292cdbb'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '5e322cb831b15486c7fde46e3983c2e2fcdf21cadd674613d665b809f5fa4711'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

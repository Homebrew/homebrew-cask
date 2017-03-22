cask 'steermouse' do
  version '5.0.7'
  sha256 '68531657b413998d623c4b6c1f177ccf8169d192a854460a4abd3e0e0fb4c83a'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'b8aa3993fd46df8b54e12b2f73dddfa0c6e964892a8643e2afad079caec7a817'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

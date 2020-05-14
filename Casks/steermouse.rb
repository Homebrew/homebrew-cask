cask 'steermouse' do
  version '5.4.5'
  sha256 'a2ad5821b923673ca5ee6ac27c0ee543127b3ec9c61dfd053f820246aa47417f'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'

  zap trash: '~/Library/Application Support/SteerMouse & CursorSense/Device.smsetting',
      rmdir: [
               '~/Library/Application Support/SteerMouse & CursorSense/Device Definitions/',
               '~/Library/Application Support/SteerMouse & CursorSense/',
             ]
end

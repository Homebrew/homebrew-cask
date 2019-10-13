cask 'steermouse' do
  version '5.4.1'
  sha256 'f30f8aacb1a6c53056406f9b49ebe038e7b3e35ee22939734bc1d84033fd6d52'

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

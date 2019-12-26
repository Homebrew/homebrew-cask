cask 'steermouse' do
  version '5.4.3'
  sha256 '8eab10757566dbd2276628575d6a7e7a1ee3e56a65ee7e5752a9023914202c27'

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

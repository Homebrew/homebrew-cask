cask 'steermouse' do
  version '5.4.4'
  sha256 'aedc9de0caab9fe6de737fc35b22b759da181b312bfd32cbd6a6e8c87e4876a6'

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

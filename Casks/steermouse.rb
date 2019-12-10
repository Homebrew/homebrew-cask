cask 'steermouse' do
  version '5.4.2'
  sha256 'd28f3cf57d5d37771d9e00f1acf229fdff0ac285e3048881f9a6e49488cdcbb4'

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

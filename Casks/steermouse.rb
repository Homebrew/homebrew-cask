cask 'steermouse' do
  version '5.0.4'
  sha256 '41df639e90be1e0b081bea6c087e6849e9af89ba03200d18b8cde475bfc67537'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '5e27f3578ceefb917e0214ca777848176b975e78bfd5ac61e6d28849909c01d0'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end

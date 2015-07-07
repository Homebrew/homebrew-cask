cask :v1 => 'hopper-disassembler' do
  version '3.9.16'
  sha256 '045ee3ecba3c81388112dd038df91ffe6e4a905d9d2c8bd2650cfff43ec01217'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler v3.app'

  binary 'Hopper Disassembler v3.app/Contents/MacOS/hopper'

  zap :delete => [
                  '~/Library/Application Support/Hopper',
                  '~/Library/Application Support/Hopper Disassembler v3',
                  '~/Library/Preferences/com.cryptic-apps.hopper-web-3.plist',
                 ]
end

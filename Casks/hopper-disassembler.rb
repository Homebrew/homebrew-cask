cask :v1 => 'hopper-disassembler' do
  version '3.10.3'
  sha256 'eb44e47267023c45c455d962e3152e1da4cf79d7a03240823db6a3110bcddabe'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast_v3.php',
          :sha256 => '5a8ac973e81200e800af90a66892451a480538f6a37c4153cdecb0e00ddfad42'
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

cask :v1 => 'hopper-disassembler' do
  version '3.10.8.1'
  sha256 '20cfb6d8da01af0cbcd645ccde02e30c88515342873da19d2d25c533f85661d8'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast_v3.php',
          :sha256 => '5a8ac973e81200e800af90a66892451a480538f6a37c4153cdecb0e00ddfad42'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'Hopper Disassembler v3.app'

  binary 'Hopper Disassembler v3.app/Contents/MacOS/hopper'

  zap :delete => [
                  '~/Library/Application Support/Hopper',
                  '~/Library/Application Support/Hopper Disassembler v3',
                  '~/Library/Caches/com.cryptic-apps.hopper-web-3',
                  '~/Library/Preferences/com.cryptic-apps.hopper-web-3.plist',
                  '~/Library/Saved Application State/com.cryptic-apps.hopper-web-3.savedState'
                 ]
end

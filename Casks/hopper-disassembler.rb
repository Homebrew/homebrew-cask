cask :v1 => 'hopper-disassembler' do
  version '3.9.12'
  sha256 '4f907ce72badf868a29756d4f0259a4b4a0293c0de7bb6945a87608a5c2784e4'

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

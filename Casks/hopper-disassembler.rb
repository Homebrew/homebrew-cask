cask :v1 => 'hopper-disassembler' do
  version '3.10.2.2'
  sha256 '7491ca51489fb4d858e9e0ecb4fdedb4dff2eb8463afc2569cec25afdf9f5501'

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

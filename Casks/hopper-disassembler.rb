cask :v1 => 'hopper-disassembler' do
  version '3.11.2'
  sha256 'b41e49bf60d49d855429bcd34fe04a05420e4975a1fcb9c01a8039ab37121259'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast_v3.php',
          :sha256 => '5e182ee160372ff0b9de30b9fcdc8641254e545a4d7a000fa6157a2e86b4764a'
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

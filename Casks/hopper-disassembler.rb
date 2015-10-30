cask :v1 => 'hopper-disassembler' do
  version '3.11.0'
  sha256 '07d50ecf9c62f65c68591170fa49d7c2e24a6eace1eb5ed56cf4e38850cda29b'

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

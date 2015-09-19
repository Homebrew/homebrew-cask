cask :v1 => 'hopper-disassembler' do
  version '3.10.9'
  sha256 'ed4aaad468b0bd8823c5ec6e68798aad69da4eac02c55222eca50441e7b615f3'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast_v3.php',
          :sha256 => '7fef169456987610e7e3c533d8629cfb29cfa38f442cbdd2401c8ac7acd0edd5'
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

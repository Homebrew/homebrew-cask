cask :v1 => 'hopper-disassembler' do
  version '3.10.9.1'
  sha256 '044ff7c40f6c760b7dab30f291a6d18483bdd472628d0406accb1099d5925928'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast_v3.php',
          :sha256 => 'ae81b57b450c7a0c99def5df3af9bf88994c1c265c1aa8d9fb2ab1bcdfcb7e59'
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

cask 'hopper-disassembler' do
  version '3.11.12'
  sha256 '4faf5d9b2f399c02c28aa233d637ebda520a054d813369123c91cca76b1e73f7'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '17eb719d067b7922c0b0824767da8426a332a0f72509acc141a1c41a8360fcb0'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap delete: [
                '~/Library/Application Support/Hopper',
                "~/Library/Application Support/Hopper Disassembler v#{version.major}",
                "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
                "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
                "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
              ]
end

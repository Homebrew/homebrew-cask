cask 'hopper-disassembler' do
  version '3.11.10'
  sha256 '3624ec98e92f8224cffaf59b8e4226786ee4ed50eec3db7afa628ef91197358c'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '97de3ef0ead76c60ec0c259fe6150d509567611170e3c3050a468b4c0cfbfa33'
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

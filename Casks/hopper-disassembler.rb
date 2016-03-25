cask 'hopper-disassembler' do
  version '3.11.13'
  sha256 'd91a292adbeae930bdf8a24988892cfacf1a777767561f55ef2db9a56aa00995'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '551ba231546a7b4751fff73c94dcd9616d0e511531c9b3287d2c4438facc3bfc'
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

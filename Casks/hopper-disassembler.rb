cask 'hopper-disassembler' do
  version '3.11.17'
  sha256 '6f8b0e7eab53df27452e64141f779b267633095a75637aa721b9bca0424f6e9c'

  #url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  url "https://d1f8bh81yd16yv.cloudfront.net/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: 'd24be268fb583328fac49d963e6ae4f93bc92c0ce49a744757752bba82352489'
  name 'Hopper Disassembler'
  homepage 'https://www.hopperapp.com/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "#{appdir}/Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap delete: [
                '~/Library/Application Support/Hopper',
                "~/Library/Application Support/Hopper Disassembler v#{version.major}",
                "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
                "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
                "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
              ]
end

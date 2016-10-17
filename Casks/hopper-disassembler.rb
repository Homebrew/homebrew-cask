cask 'hopper-disassembler' do
  version '3.12.1'
  sha256 'd09b7fd76130c0a18485d933af06afe5d9e8e1e6d9b34f6e959d7023738fe434'

  # d1f8bh81yd16yv.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1f8bh81yd16yv.cloudfront.net/Hopper-#{version}.zip"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '9b01be3ec7be925d5d9964c0b74aded055f1c32a34833fe09bf11d0f327e976c'
  name 'Hopper Disassembler'
  homepage 'https://www.hopperapp.com/'

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

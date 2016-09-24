cask 'hopper-disassembler' do
  version '3.11.20'
  sha256 'fee6fb596a21d0ee33d929a298926a8f8308946ca9d8821cb97390b9a2a478e7'

  # d1f8bh81yd16yv.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1f8bh81yd16yv.cloudfront.net/Hopper-#{version}.zip"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '9f654ee8423fe4337d66ba2d242e8ab6350926be1f74a5adbb3df380bd444c65'
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

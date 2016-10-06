cask 'hopper-disassembler' do
  version '3.11.23'
  sha256 '63e3f3a34f58bb24ec3446143271c90637ea2b375cc73fbbd62a6df60cf7be8b'

  # d1f8bh81yd16yv.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1f8bh81yd16yv.cloudfront.net/Hopper-#{version}.zip"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '1c313cc8e78a21ec980c3032c06954e2394a994c39463d48c202a430af47acda'
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

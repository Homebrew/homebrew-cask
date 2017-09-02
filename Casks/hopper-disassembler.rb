cask 'hopper-disassembler' do
  version '4.2.15'
  sha256 '55d74d126dfccfc20536eb09b2ba0004773b2f8a1c2886d072de41eef8343292'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '05b4561af8e028abb2a21d798a20aa61da7332bf64e538ca132fdc8e175914c2'
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

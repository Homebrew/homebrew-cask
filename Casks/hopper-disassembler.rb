cask 'hopper-disassembler' do
  version '4.3.14'
  sha256 '15eb636204563017d2422009fd6974bf05eaf0f300990c50158918a74873e559'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '861368261c486c5e6cc3af0fc12952c8504fe56abbd948bc7af216927c3d1517'
  name 'Hopper Disassembler'
  homepage 'https://www.hopperapp.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "#{appdir}/Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap trash: [
               '~/Library/Application Support/Hopper',
               "~/Library/Application Support/Hopper Disassembler v#{version.major}",
               "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
               "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
               "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
             ]
end

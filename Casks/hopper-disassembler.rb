cask 'hopper-disassembler' do
  version '4.3.15'
  sha256 '9b8471f51f27dbe72e5a4ede012017b9c97a91eee8904ff94c4c90ef61232e69'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: 'aff337c00b9b049d0de705320601b6d44e8819de50051170903896ce969556b3'
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

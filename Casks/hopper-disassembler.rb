cask 'hopper-disassembler' do
  version '4.3.17'
  sha256 '79e2a08f1f20567c10d75381d59e3f5611189c6d27e31e03cc5343df1eba0bb8'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: 'e409abfb2e0cb4d90a4093db216e0d9b03306b5d55db7b9bc411394d000aa8bc'
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

cask 'hopper-disassembler' do
  version '4.0.16'
  sha256 'c4950a3684bb375d93663d95a05d72223a4817a294fbd9b3de26c934b9ea1f69'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}.zip"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '02b4a1edfc22be66b7d307b3fe2c5b14b2b4f30a3621be61f52b527afa35638d'
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

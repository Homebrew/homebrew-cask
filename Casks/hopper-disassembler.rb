cask 'hopper-disassembler' do
  version '4.3.20'
  sha256 '0efdb10e68f7548606e13d4724971d609c19381827e3259c8e734cebf980b4f0'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: 'a1a4cbcdba9fa03978e6fd65d37eca591f94794380e13a0727920ec074a660d5'
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

cask 'hopper-disassembler' do
  version '4.3.3'
  sha256 '7effaac5649e951e8ed91afe3cff8814c3f728bb0b6f4115ed02d41e97fae5f4'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '49071968e329e57b189b27957a1a89cbf5c5cbd0cb77bbcffa2d7386c3b5cc5b'
  name 'Hopper Disassembler'
  homepage 'https://www.hopperapp.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "#{appdir}/Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap delete: [
                "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
                "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
              ],
      trash:  [
                '~/Library/Application Support/Hopper',
                "~/Library/Application Support/Hopper Disassembler v#{version.major}",
                "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
              ]
end

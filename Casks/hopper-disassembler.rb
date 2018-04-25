cask 'hopper-disassembler' do
  version '4.3.19'
  sha256 '8bb954903fe7b6ab41048075c14cd55ea36db818980837211008b58cada94691'

  # d2ap6ypl1xbe4k.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '6b6a5d41da7db76db72c5282e892af24f186f5d53d0dc31fa727dc4dca9432af'
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

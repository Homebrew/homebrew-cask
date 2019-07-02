cask 'nvidia-geforce-now' do
  version '2.0.8.81,0ADC64'
  sha256 'a75f6b0f10ef29d42dccf4d5bd472471143a55e6190c86e930bb0cd2b8ba2ea9'

  url "https://ota-downloads.nvidia.com/ota/GeForceNOW-release_#{version.after_comma}.dmg"
  appcast 'https://ota.nvidia.com/release/available?product=GFN-mac&version=1.17.2.0&channel=OFFICIAL'
  name 'NVIDIA GeForce NOW'
  homepage 'https://www.nvidia.com/en-us/geforce/products/geforce-now/'

  depends_on macos: '>= :yosemite'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'GeForceNOW.app', target: 'NVIDIA GeForce NOW.app'

  zap trash: [
               '~/Library/Application Support/NVIDIA/GeForceNOW',
               '~/Library/Preferences/com.nvidia.gfnpc.mall.helper.plist',
             ]
end

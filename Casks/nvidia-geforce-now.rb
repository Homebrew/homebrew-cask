cask 'nvidia-geforce-now' do
  version '2.0.6.91'
  sha256 '7f24902a66c41ed34b24a96a4f272eb93567617984bbbb7bb86e768e588d01cc'

  url 'https://ota-downloads.nvidia.com/ota/GeForceNOW-release_9C7E43.dmg'
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

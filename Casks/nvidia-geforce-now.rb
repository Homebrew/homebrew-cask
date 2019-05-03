cask 'nvidia-geforce-now' do
  version '2.0.6.87'
  sha256 '2ca393195123cc669a1b21bd509780d80d9600545aa4e3363c8a2a5dab034e65'

  url 'https://ota-downloads.nvidia.com/ota/GeForceNOW-release_8AC740.dmg'
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

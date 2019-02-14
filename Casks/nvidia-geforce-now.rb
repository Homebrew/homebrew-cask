cask 'nvidia-geforce-now' do
  version '1.17.2.28'
  sha256 'ced40a2e079d7f4a16b131640b9c84e4844588f5f1bbe9b0dc779a9e18ed856f'

  url 'https://download.nvidia.com/gfnpc/GeForceNOW-release.dmg'
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

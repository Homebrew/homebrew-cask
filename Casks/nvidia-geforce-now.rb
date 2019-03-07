cask 'nvidia-geforce-now' do
  version '2.0.4.25'
  sha256 '49b552e1aa8626bbddd1f7993416dd15e535a5f3abbd1d44195fb31aa8076fcf'

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

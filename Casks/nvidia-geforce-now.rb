cask 'nvidia-geforce-now' do
  version '2.0.10.71,350E76'
  sha256 '05bed0f13eee22f63e45832712e3d4ac2629107221cc282c564f65ceb7b41f83'

  url "https://ota-downloads.nvidia.com/ota/GeForceNOW-release_#{version.after_comma}.dmg"
  appcast 'https://ota.nvidia.com/release/available?product=GFN-mac&version=2.0.8.85&channel=OFFICIAL'
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

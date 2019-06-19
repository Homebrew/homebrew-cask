cask 'nvidia-geforce-now' do
  version '2.0.8.78,1592B5'
  sha256 'dfdb9025505e5d6912a4f801640a8df9a394d6c22af3f8e2dddfdf7c6359891e'

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

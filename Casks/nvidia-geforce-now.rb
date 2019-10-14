cask 'nvidia-geforce-now' do
  version '2.0.13.54,78AD6B'
  sha256 '107ee64c3292f0c82f08f790b8ac4c9645191b15649a59e3895d3fe279735bd5'

  url "https://ota-downloads.nvidia.com/ota/GeForceNOW-release_#{version.after_comma}.dmg"
  appcast "https://ota.nvidia.com/release/available?product=GFN-mac&version=#{version.before_comma}&channel=OFFICIAL",
          configuration: '[]' # Only happens when there are no newer versions
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

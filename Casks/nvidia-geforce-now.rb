cask 'nvidia-geforce-now' do
  version '2.0.10.85,672B78'
  sha256 'ed7c123bc01da9a14e08566f5ac1d003f01e7b91b5774e74eb8f0373a4835817'

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

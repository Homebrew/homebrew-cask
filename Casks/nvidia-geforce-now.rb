cask 'nvidia-geforce-now' do
  version '2.0.19.65,43B1E3'
  sha256 '3e788092bc0ed74fddb5fd21fee785992d89e70ff8598e49701a46e15f140863'

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

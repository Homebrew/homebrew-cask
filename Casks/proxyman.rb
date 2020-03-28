cask 'proxyman' do
  version '1.20.0'
  sha256 'd50cf91c1d0bba1f3ae8039cb189dd4572a880579c15df3f15c935890f92342a'

  # github.com/ProxymanApp/Proxyman was verified as official when first introduced to the cask
  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg"
  appcast 'https://github.com/ProxymanApp/Proxyman/releases.atom'
  name 'Proxyman'
  homepage 'https://proxyman.io/'

  auto_updates true

  app 'Proxyman.app'

  zap trash: [
               '~/Library/Application Support/com.proxyman',
               '~/Library/Application Support/com.proxyman.NSProxy',
               '~/Library/Caches/Proxyman',
               '~/Library/Caches/com.proxyman.NSProxy',
               '~/Library/Cookies/com.proxyman.binarycookies',
               '~/Library/Cookies/com.proxyman.NSProxy.binarycookies',
               '~/Library/Preferences/com.proxyman.plist',
               '~/Library/Preferences/com.proxyman.NSProxy.plist',
               '~/.proxyman',
             ]
end

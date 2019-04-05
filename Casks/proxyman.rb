cask 'proxyman' do
  version '1.3.4'
  sha256 '5463978b8c287bf5b4dadc56f68fae835d4f9d0346e0a7d483c7acb2cbbb3654'

  # github.com/ProxymanApp/Proxyman was verified as official when first introduced to the cask
  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg"
  appcast 'https://github.com/ProxymanApp/Proxyman/releases.atom'
  name 'Proxyman'
  homepage 'https://proxyman.app/'

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

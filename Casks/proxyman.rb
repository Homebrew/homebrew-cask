cask 'proxyman' do
  version '0.5'
  sha256 '5d20623ee217b034fb1f41fad424293cc3e542177ea5f3975a926424ff0929f5'

  # github.com/ProxymanApp/Proxyman was verified as official when first introduced to the cask
  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg"
  appcast 'https://github.com/ProxymanApp/Proxyman/releases.atom'
  name 'Proxyman'
  homepage 'https://proxyman.app/'

  auto_updates true

  app 'Proxyman.app'

  zap trash: [
               '~/Library/Application Support/com.proxyman',
               '~/Library/Caches/Proxyman',
               '~/Library/Cookies/com.proxyman.binarycookies',
               '~/Library/Preferences/com.proxyman.plist',
               '~/.proxyman',
             ]
end

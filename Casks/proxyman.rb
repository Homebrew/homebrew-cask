cask 'proxyman' do
  version '0.5.1'
  sha256 '71b14559917580daf50cc231a81b87489e01559a97203db84ad5ad761b5194b0'

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

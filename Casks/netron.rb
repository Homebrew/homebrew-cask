cask 'netron' do
  version '4.1.2'
  sha256 '8b15fb200535f86b8f5f25f0346fc1a797986ebb7a80395b696bfde5c74a0db4'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

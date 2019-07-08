cask 'netron' do
  version '3.2.6'
  sha256 '98ebd111e6ae8d371850834f54873658968a8fe6a34eac6fae47ea5c7a96b448'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

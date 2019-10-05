cask 'netron' do
  version '3.3.9'
  sha256 'ab95a1a12a29940b14b089db0cc18457df283065abb9993ee1c4f6c63a7eff5e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

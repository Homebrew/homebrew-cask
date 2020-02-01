cask 'netron' do
  version '3.8.5'
  sha256 'c0758763cbe6fe193a1d43d04257e3e31c3a4f0ad93e391500bb3f6542d2cc55'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

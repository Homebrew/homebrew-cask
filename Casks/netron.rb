cask 'netron' do
  version '4.0.1'
  sha256 '8cb86228a4faad6bd82d19c3073396a6586503705eb091612754d12c8a893c42'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

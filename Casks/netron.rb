cask 'netron' do
  version '2.7.0'
  sha256 'cc72f2391db910a3b6f05d87347e3e2f441869e4e60bb61cfb92cf820b25f175'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

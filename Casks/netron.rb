cask 'netron' do
  version '2.4.7'
  sha256 '749293530f49e478ef163e8e2bdedfddb7b0248499209952fb2e6cdd2b6ad8bf'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

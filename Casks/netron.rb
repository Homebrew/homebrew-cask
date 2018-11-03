cask 'netron' do
  version '2.4.4'
  sha256 '77307bab8747a4443ec957a4156cf67bbaa1633a62067df9fb37df67b8d3f40f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

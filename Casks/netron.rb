cask 'netron' do
  version '2.6.8'
  sha256 '43ba5131c1cdacfe3261752818e45a9ddfb19dd8494bf156b7bbd14004f0c151'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

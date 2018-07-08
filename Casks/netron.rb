cask 'netron' do
  version '1.9.0'
  sha256 '2000e473a48820bb9c8929a5f6bc058b66dd163e012f6baed38bad6020c1aeb7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

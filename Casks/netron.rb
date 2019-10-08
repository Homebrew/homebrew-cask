cask 'netron' do
  version '3.4.1'
  sha256 'def26ddec18ab6d4ee8e8337c15a28df1c0a4f3316093990f7245373ed2df4bc'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

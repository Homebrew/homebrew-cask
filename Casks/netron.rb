cask 'netron' do
  version '4.4.0'
  sha256 '3649a95a9bf85ae006972724af4a90d762f45ec313f2554d39aa8cc5a7aa2d75'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

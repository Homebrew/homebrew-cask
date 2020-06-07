cask 'netron' do
  version '4.3.1'
  sha256 'fc322cba45cacfdef37fb5b9b09423e9e0512fa7dd688d0cc3e150e89bd2f6b1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

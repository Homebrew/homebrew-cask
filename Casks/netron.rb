cask 'netron' do
  version '2.1.0'
  sha256 '11db222b368e03cddafd98ea717eb390f2b9c78bc6bc73432fe35dc311162da7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

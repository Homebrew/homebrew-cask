cask 'netron' do
  version '2.3.9'
  sha256 'a903cececc4c351e368ce18e824c30c97a40cd154a48691a37c6d4798b34c53b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

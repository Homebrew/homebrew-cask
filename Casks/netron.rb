cask 'netron' do
  version '1.9.8'
  sha256 '8c4726f2978b4f32886f54d39570b555e45b1c2ffae19a919542b27c89c46a1e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

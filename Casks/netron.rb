cask 'netron' do
  version '1.1.7'
  sha256 '598ddd765bc5c01a79037f8cb46e07ca8addb0e5e3f6a234ee9f276f63d22a45'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '85de5f1c2a292700e7822a0631e95cdd021de2c1d62e65b2d69d7eb08728670c'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

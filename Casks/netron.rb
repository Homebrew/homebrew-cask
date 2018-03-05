cask 'netron' do
  version '1.5.9'
  sha256 '2b72737824156b5d7796d562db409a4378bf4e22e10f2b8f815efa5c147285c0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '4cb223a46ded0d2adaef2a277d08f81dfaf3bcee716b08950b9ef493e8995aa4'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

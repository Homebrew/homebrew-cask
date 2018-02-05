cask 'netron' do
  version '1.4.2'
  sha256 '906acfd98f4fed2b7983bc70553cdd85d6d3eb0a7cbca7824fedbdfd5fca473f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '1b80e1475ffd53adbbd707081bb93b6907a2639e99476f27bfae7622624e267c'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '1.5.1'
  sha256 'eeb044b862901b2fc2cf801dd5357bde91974e0832aebffc68a37eded13ca635'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '5b443c72a2deab1602f3b3b80889e5107825c6122971b09354da143037c0e801'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

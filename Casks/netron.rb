cask 'netron' do
  version '1.7.3'
  sha256 'efb68a5d226a65b49de5606be4faa7d0ce6fa0d07814bc815bc0e97d0d1ffbd8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '3308d38cbcd9cb4a4419ae40eef66a00dbdb0d1866f77abe4e0ff558ce1e375e'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

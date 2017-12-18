cask 'netron' do
  version '1.1.3'
  sha256 'ca777824cb49a8bf8164f5ad5a7a43226e0b88e0d4a17ca7e800c4ad8bde310c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'afaf68e2c328536a5a65ecba5492671c0beb08cffa114cd4ba5d130ddb85e0f2'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

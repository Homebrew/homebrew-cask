cask 'netron' do
  version '1.7.2'
  sha256 '1ea3b312a331148dde599fd57ede2355217764c63bef0ad9e829fb3a3532be12'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '494c35076ac847c80b9fef2e8e0f7b7502a9192758a7b9088607e8a91cd188b5'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

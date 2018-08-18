cask 'netron' do
  version '2.0.3'
  sha256 '438b311156b6a9c447a4590afa7fe7a3f7f785519aa2b1b2e5efe816977983b1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

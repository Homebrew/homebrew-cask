cask 'netron' do
  version '1.9.5'
  sha256 '84a916d4ef8a21d682073dc07b0f2e46bea156ea1f23a7c222cd4e06af68a1e8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

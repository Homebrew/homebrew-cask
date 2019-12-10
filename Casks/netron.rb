cask 'netron' do
  version '3.6.0'
  sha256 'b912906c91d817b89344a8bd7a039ed8c34177999b255686aceb200015acb5cb'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

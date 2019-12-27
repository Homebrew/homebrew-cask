cask 'netron' do
  version '3.7.1'
  sha256 'b3aba676f4ce2d8e06785d9599a88c3e42be6c41237a0c8add32284562404575'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

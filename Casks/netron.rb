cask 'netron' do
  version '4.0.8'
  sha256 'b39712ecffbb39db6ba27cb48de8051f5beb3b6bf98c21eed561536430bb81be'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

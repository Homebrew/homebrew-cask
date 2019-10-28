cask 'netron' do
  version '3.4.8'
  sha256 '229d20da3c8463d9372f1052c3063b111208e52af14a7f57ed63588de2e278cf'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

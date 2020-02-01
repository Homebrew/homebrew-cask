cask 'netron' do
  version '3.8.4'
  sha256 '1cad01338a0019d07062385078a27e94e873d8ea0cc81763560cb803bcf33787'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

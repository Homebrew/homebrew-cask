cask 'netron' do
  version '3.1.1'
  sha256 '8c6959ebfe7c8ccac207c09d93bd4b1e2deb4b49da5a2c7300c7dc4652fa3e83'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

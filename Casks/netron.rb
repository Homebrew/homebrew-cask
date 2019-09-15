cask 'netron' do
  version '3.3.5'
  sha256 '71560cce7a429df709445eccf17fe051a047abf146522a8393e67057d9f751b1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

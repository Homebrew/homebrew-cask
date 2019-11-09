cask 'netron' do
  version '3.5.3'
  sha256 '3677235e7a9032354c32f7a44156ee3a1babb057dce38af94c318bbe8149e646'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

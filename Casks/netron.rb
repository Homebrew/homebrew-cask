cask 'netron' do
  version '2.4.8'
  sha256 '64ff539b85e21aa9a6f1df2631aaf510e2d833167c11042ddf6405fe1ad80726'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

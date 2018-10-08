cask 'netron' do
  version '2.2.3'
  sha256 '40869341a43b5ba24ff4e6d89a8df392b91a0bf9c6f7be7295c1791a24902d79'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

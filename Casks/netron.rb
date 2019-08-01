cask 'netron' do
  version '3.3.0'
  sha256 '1015adc94caecab87526d8403c34608cf6c7d8e98f3621c5f8c2100c436dce4e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

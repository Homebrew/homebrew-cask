cask 'netron' do
  version '3.2.5'
  sha256 '3db911ca75527801adf2e5ad429579ef6cf24cda72ecb8e86c27af85c5ae885c'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

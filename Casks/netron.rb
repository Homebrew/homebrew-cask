cask 'netron' do
  version '1.3.9'
  sha256 '982fe0088c48c5f46b32ed2942cc20b05f7f31b19deb20ab91e9e77b6fef2fe8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '924551fc5c6704bdfe7680302511948c20a8e9415e7af1306d19ebf80e3d6865'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

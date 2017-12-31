cask 'netron' do
  version '1.2.3'
  sha256 'e65b164672d052b25a1a14cd1cef261bde0c53a9b45576dd7fabeec4ee346f7c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '67e9e7433bed1bf1ebc3a921da6f62f81a0f1ca65a76eea324c6e888bf4c59ce'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

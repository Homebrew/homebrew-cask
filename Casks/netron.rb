cask 'netron' do
  version '1.8.5'
  sha256 '3aa5713395be2e53940fbd31c260293f4a6a2b762c51bb228b54e7c84bf120f4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '457895f2ec86b07fa61d4bb0ac082c0e2663850e434628ac17308f3d8289b973'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

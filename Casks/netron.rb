cask 'netron' do
  version '1.7.4'
  sha256 'a8771f95650a13fac96903bfbf44336b39d06f273701b86026a9dadcf548fc9f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '4a5f996fa4000d03d61d0bb366e9affda57f38e70e6ee26c226de4043995d4e8'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '1.4.1'
  sha256 '6e38384b10341197450f875c43caf809f6d7d64bbfba83f95fe73d6bf7a4e10c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'dd2fea80e25966456002f1b1fd24744580222778e0388ebabd4ed9971ecb2db1'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '1.4.6'
  sha256 '55d29755de5a4b4b47c9b7ae8d6fe52329e512a6af50fdb544c268b15e705bfc'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '866d64d219b23ce00a9eb02c3061f65a01199bf71edd736b1face8af97552703'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

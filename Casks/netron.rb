cask 'netron' do
  version '1.4.7'
  sha256 'f29d1200a3af2b965fdb07a40c845ee70c7a8097c1a23809e4de4c6f2c549fa5'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'c7269c5aace7b3d4e32fe349e871ed9efe222dbc32c0cbaa25aad0906ec33ce6'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

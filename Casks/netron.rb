cask 'netron' do
  version '1.3.6'
  sha256 'a94e30f4efa2c99e83c3acd0d36bb47a17f80b8624762842fe05f905dc5d3b0a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '85ccba814a664fff405c7cf65291d47b810b897fb52f1867bcccf80c12868d4f'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

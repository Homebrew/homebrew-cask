cask 'netron' do
  version '1.6.2'
  sha256 '0453764d557ccfd47e5ad42c633f3db84a65168a853f47bb49b11fbc56bde0c9'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '09cdad3fc3921c4ce64ac2def277266bbaad3d5bc3157972c1330bb24948b713'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

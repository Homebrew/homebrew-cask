cask 'netron' do
  version '1.3.1'
  sha256 '041c8358b34d54c6f19be702cd575928414dd292cdaab2533644a506f41e6088'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'a56a2338e9f163655c9f4c048dd687c98eca9f9306ee1081e3a26ca8e8f0b697'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

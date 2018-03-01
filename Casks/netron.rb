cask 'netron' do
  version '1.5.7'
  sha256 '9f27033b83a00a25d67120ee805b944167a135ff8e1392027623ca704dd47519'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '52ed253810e440e4fa126d967d16bf6895f9632081fc3532d10d9d1ef2b6603d'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

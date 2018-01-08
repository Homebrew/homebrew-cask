cask 'netron' do
  version '1.2.8'
  sha256 '2b739e0be2494756e698697d4b3e6869ec0c7a9d5e6d6327c5fcd95b9f2bb7d9'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '5cd81593d8561d2e7c854c10bd2a9726dedb48dc53534868f50d56924ae14492'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

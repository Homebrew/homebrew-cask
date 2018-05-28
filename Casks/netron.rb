cask 'netron' do
  version '1.8.1'
  sha256 '2477f9781a7f21bb1b57f2e7c5037cdd6c5093b8892753f7c3c06f7ad071dcf6'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'fadc5c2b2b3b885d67e27f9c91a14e5e7601f944b7a4fe230493907c52c40a1f'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

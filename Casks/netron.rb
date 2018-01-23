cask 'netron' do
  version '1.3.7'
  sha256 '197618191cd63f1aa9257f7557b65d5dcc6e3639cd97bfb90bc7e427a8e30caf'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '6d7ffbc0376512dfe3128b8120042b767059dbc9e15452e6cb9c64d596f8993a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

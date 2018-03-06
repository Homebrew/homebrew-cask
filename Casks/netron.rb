cask 'netron' do
  version '1.6.0'
  sha256 '0ef9adce67fae2216ae49fb9e21eabe3711c991c3600e734591218a0ff064980'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '9d391dd05ecc95f1d8f998e5d011a2d63d55fd8b314b9b39f862927240098057'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

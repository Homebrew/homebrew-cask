cask 'netron' do
  version '1.5.6'
  sha256 'd66ada7f088691a3d8312a4ea36ee4aae44f6a28ec3a20ac0f8370ead40b98d7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '82555a8775d79d39e8ce4928ddbe85da2e5ffd20d6c02cc3f218f49fec9d87d8'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

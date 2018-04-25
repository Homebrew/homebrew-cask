cask 'operadriver' do
  version '2.35'
  sha256 'a30eda81900b8c25c59bd7786aded7e86dd1cd1e9108b719138544ef46773385'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: '77ef349fbc0a0771c389458b27e0072ad7c2a74133bd663d05e575588cbe70f1'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end

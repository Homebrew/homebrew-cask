cask 'hachidori' do
  version '1.1.7.2'
  sha256 '65f11c9d94c68e7e46aa89a9923dbddb95c2c7abb0c183dc26aafa5ec6caf827'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  appcast 'https://github.com/chikorita157/hachidori/releases.atom',
          checkpoint: 'b77dc40831d44d712e81693e73217f9f6d43accb5ae7552709a3bf4b8be1b9a6'
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'
  license :bsd

  app 'Hachidori.app'
end

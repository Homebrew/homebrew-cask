cask 'caprine' do
  version '2.10.0'
  sha256 'c13fbd3e4492dbe100f5594f4e6f2b38afb1e7dc9476d3a3096169225399463d'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '23607bbeb299f67402a719640f87c777f90947d8490736c99cd5f10a2c17e53d'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end

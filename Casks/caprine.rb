cask 'caprine' do
  version '1.2.0'
  sha256 '878a72e265eaf012276b1352c800fd86ac75b8543279984df417e23e4a6f1f0f'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'd754bf331577ee08513ae88a40dae9d8b48ae58c68db88d7530434af1d88090e'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end

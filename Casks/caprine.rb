cask 'caprine' do
  version '1.4.0'
  sha256 '51cc1dab3c7e02c13ffef14f446bad9af417be62fb64cafa5bdced0f6ffd163a'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '39cd7443804cee6199df82380723094ab6c0413e605765353cef6545533e3a8f'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end

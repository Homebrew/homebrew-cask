cask 'caprine' do
  version '1.3.1'
  sha256 '19e048e2457ade0712b8fac73f6b0c928993fe791dfd38ec23abe6d96a62ec15'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '8cda3c72e9bac26fac211a79baf29de04d5442ba5c905a65fc8637943ea2d550'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end

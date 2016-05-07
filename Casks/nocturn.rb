cask 'nocturn' do
  version '1.1.2'
  sha256 '9eb96dc4f999f2b33d62a05638ccc665418e330222b97d0d85eb6c677c023c17'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '58e68e03917fca9073c983eff37442d5a01dddbaf22e49bd3bba1846037bb8a7'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'
  license :mit

  app 'Nocturn-darwin-x64/Nocturn.app'
end

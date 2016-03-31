cask 'nocturn' do
  version '1.1.1'
  sha256 '3818849494489e312c4dccd545b44624e33f7db90458bd3c2535c3b7971991e0'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '1165bb4b926f0d7271545062a0785d462b547212c68d7e961d69b8ed3281619b'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'
  license :mit

  app 'Nocturn-darwin-x64/Nocturn.app'
end

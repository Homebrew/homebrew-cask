cask 'seashore' do
  version '2.3.4'
  sha256 '7b9d0bf312e146b8067a6a5c99beabeb23d332bf13f247fd4caa6521401918fb'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end

cask 'felony' do
  version '0.10.3'
  sha256 'b9587e374683ce6fc520f63ae6559fbda801d80e4d0026380f4144541e6fb715'

  url "https://github.com/henryboldi/felony/releases/download/#{version}/Felony-#{version}-mac.zip"
  appcast 'https://github.com/henryboldi/felony/releases.atom',
          checkpoint: 'e94cd1ccc01488e99b07a372162ea9e555b6aef0e0911cbb198281f03b975467'
  name 'Felony'
  homepage 'https://github.com/henryboldi/felony'
  license :mit

  app 'felony.app'
end

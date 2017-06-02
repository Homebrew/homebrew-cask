cask 'felony' do
  version '0.10.3'
  sha256 'b9587e374683ce6fc520f63ae6559fbda801d80e4d0026380f4144541e6fb715'

  url "https://github.com/henryboldi/felony/releases/download/#{version}/Felony-#{version}-mac.zip"
  appcast 'https://github.com/henryboldi/felony/releases.atom',
          checkpoint: '5e48d2c9a7fbeb0249fb513c7fb03d044a42db57a4296fd6626861f3151eecb9'
  name 'Felony'
  homepage 'https://github.com/henryboldi/felony'

  app 'felony.app'
end

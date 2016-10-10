cask 'felony' do
  version '0.10.3'
  sha256 'b9587e374683ce6fc520f63ae6559fbda801d80e4d0026380f4144541e6fb715'

  url "https://github.com/henryboldi/felony/releases/download/#{version}/Felony-#{version}-mac.zip"
  appcast 'https://github.com/henryboldi/felony/releases.atom',
          checkpoint: '17e205d3176417046658cb1c3e48d388334ba10c8213faa8fcf0347e49c1084b'
  name 'Felony'
  homepage 'https://github.com/henryboldi/felony'

  app 'felony.app'
end

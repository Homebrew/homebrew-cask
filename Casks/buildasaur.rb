cask 'buildasaur' do
  version '1.0.0-b3'
  sha256 'd619f3f2a3d0bb4b1b0b08a7470a24795b720cf46f4fbe1b9f8a41071233d911'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: 'a618c41bffe50a4abc3c6275746ee2c3e66af43cf88e679c73cd756c2d244248'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end

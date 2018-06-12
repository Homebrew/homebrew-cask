cask 'pawnee' do
  version '1.0.0'
  sha256 'b8f9b77f37bc6fcc2a68c26f90e01a60c1d150e1866fa32c90d0daca260fde13'

  url "https://github.com/johansatge/pawnee/releases/download/v#{version}/pawnee-#{version}.zip"
  appcast 'https://github.com/johansatge/pawnee/releases.atom'
  name 'Pawnee'
  homepage 'https://github.com/johansatge/pawnee'

  app 'Pawnee.app'
end

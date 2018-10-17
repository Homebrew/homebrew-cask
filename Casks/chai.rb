cask 'chai' do
  version '3.0.0'
  sha256 '64a94fca62f8390d5b10bdd1c480ecc1117125af27e2c8d86c541d0addf23c80'

  url "https://github.com/lvillani/chai/releases/download/v#{version}/Chai-v#{version}.zip"
  appcast 'https://github.com/lvillani/chai/releases.atom'
  name 'Chai'
  homepage 'https://github.com/lvillani/chai'

  app 'Chai.app'
end

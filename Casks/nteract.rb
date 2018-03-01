cask 'nteract' do
  version '0.7.1'
  sha256 'a03f8d8373a182f0b87b194db1eb1924e089cdb975bd0ee5c4bdbc79bd940795'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '318bc16a2cf76ed4f341c3a00e9a793e3b65a5d8c1dfa28923c56e3070d46990'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

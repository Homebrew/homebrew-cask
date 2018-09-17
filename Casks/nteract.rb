cask 'nteract' do
  version '0.11.7'
  sha256 'c9726b739c2d48d3d19edaeae347b786ec4d64cec732656c31a820cc8895e2dc'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

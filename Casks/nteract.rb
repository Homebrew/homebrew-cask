cask 'nteract' do
  version '0.8.3'
  sha256 '7ca00bfa01e66613df5bfd10f238fa179ac88b59b8476dccd96eee6a8ad2239f'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'e6b272fcedef05ea2a7fe44f5e6e0b4bfb7f1615cc8d6c35e256c76750ca11dd'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

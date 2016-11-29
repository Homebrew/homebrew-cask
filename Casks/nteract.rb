cask 'nteract' do
  version '0.0.15'
  sha256 '41ef254835640fbf74e1bbcb122a22af501d95993272f200566667b6fff32c78'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '58d8b920b94f8fa80b072ebd47c7dfdbda75c3d3b1dbc1d14c8726d2198c1b65'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

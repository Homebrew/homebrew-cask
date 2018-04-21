cask 'nteract' do
  version '0.8.4'
  sha256 'dcc993ac35e1b3e58057f0eb73240a695c681e7501c0454728b53550f6ebe160'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '1b1402e6093e6d5a02e19951625ecbd2369792c30ebe4e2d743f434cceb020d9'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

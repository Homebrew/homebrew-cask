cask 'nteract' do
  version '0.8.4'
  sha256 'dcc993ac35e1b3e58057f0eb73240a695c681e7501c0454728b53550f6ebe160'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

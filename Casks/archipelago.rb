cask 'archipelago' do
  version '3.8.1'
  sha256 'bd0f21f31eda4c5f355c28abb60668ab91c4d5d46cdb3a936e519505e951387e'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

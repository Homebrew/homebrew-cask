cask 'archipelago' do
  version '3.1.0'
  sha256 'efbcd2e0de235160b0faa6451b7aca5c82fc344887385c045f4dbc634d1546e5'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

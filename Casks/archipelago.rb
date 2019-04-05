cask 'archipelago' do
  version '3.2.1'
  sha256 'a56f40af689c1ca3312c58693e08a4a0fe1c8cb740fc3931281bc08f97cdb683'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

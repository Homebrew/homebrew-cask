cask 'archipelago' do
  version '3.2.2'
  sha256 'a364b7c7db85c46a7db2e6ce253fbbb67860b1fca05fa8a7e822dff12437c241'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

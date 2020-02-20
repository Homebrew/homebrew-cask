cask 'archipelago' do
  version '3.10.0'
  sha256 '81b5c48accf0e29a2612fbe0b7fc42de691cd07a77db2414f5d30d116971ab7e'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

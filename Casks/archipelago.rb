cask 'archipelago' do
  version '3.0.0'
  sha256 'ce9f4930b7117cf66a38f7c55ccac319931653c5fbef6a12c8a572286bd0f5a0'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

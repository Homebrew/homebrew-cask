cask 'archipelago' do
  version '3.2.0'
  sha256 '66e51636df4b90cf867feab80008f7b3b9c017ee5b21138b48f44509129c02b9'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

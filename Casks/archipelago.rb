cask 'archipelago' do
  version '3.6.2'
  sha256 '56415b705b89e3290e9ce00cd26d7d74c4cba235fcfe542c0ca1e4fe06d208ba'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

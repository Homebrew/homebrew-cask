cask 'archipelago' do
  version '3.0.1'
  sha256 'b3893331ff4769f7442beff11a2a6641bcb0ebc4c0f3082a9f673b1b34898483'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

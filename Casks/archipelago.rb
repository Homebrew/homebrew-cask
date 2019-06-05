cask 'archipelago' do
  version '3.4.1'
  sha256 'b04dfc1f477d0a0ceb5c1dc5423c23e9397054bf3b3a62dc4f533c414be2ff3a'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

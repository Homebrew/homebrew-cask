cask 'archipelago' do
  version '3.7.0'
  sha256 '2a81e5f710076cb6f13ed091568c78c57a88d5b007cbef75d05c94a23849d780'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end

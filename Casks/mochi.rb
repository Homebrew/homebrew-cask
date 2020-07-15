cask 'mochi' do
  version '1.5.7'
  sha256 'cc021ef6e6cd1cd1e06462c7377d3d0411a606023caf58167eb58914d1edb733'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end

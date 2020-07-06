cask 'mochi' do
  version '1.5.5'
  sha256 'd425ac39593e41f330d3f1e52c632190d13de4ed5fc8b8d9b8f9d8141208a484'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end

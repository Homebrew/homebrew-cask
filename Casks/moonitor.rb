cask 'moonitor' do
  version '0.7.1'
  sha256 'b491f3d61c4c65defbb0b743814841e08c949600cc7eb4f225b5aecb9de47888'

  url "https://moonitor.io/wp-content/uploads/app/Moonitor-#{version}.dmg"
  appcast 'https://moonitor.io/'
  name 'Moonitor'
  homepage 'https://moonitor.io/'

  app 'Moonitor.app'
end

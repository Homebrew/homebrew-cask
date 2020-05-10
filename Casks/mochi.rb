cask 'mochi' do
  version '1.4.15'
  sha256 'bfd6a5b8968e28a26e55b3a603e07c546168c8af439580f8245e1d4a0e3e7766'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end

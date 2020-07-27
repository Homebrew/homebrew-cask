cask 'mochi' do
  version '1.6.1'
  sha256 '300f81f5dd367575408e9639326a3f37801bbba5017eb5f63ad4da8cee52d8fb'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end

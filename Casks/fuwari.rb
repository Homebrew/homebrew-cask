cask 'fuwari' do
  version '0.3'
  sha256 '1542069425d44d49c5b06690fccb0e52fcd66fab2bf58ed0ca7b3fe70e03ce06'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/kentya6/Fuwari/releases/download/v#{version}/Fuwari_#{version}.dmg"
  name 'Fuwari'
  homepage 'https://fuwari-app.com/'

  app 'Fuwari.app'
end

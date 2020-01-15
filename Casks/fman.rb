cask 'fman' do
  version '1.7.0'
  sha256 'c9b25a2f660590d886b493916d28476e75e5f1e09811a5de2821ba104b076b5a'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end

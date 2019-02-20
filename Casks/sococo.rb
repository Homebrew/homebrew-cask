cask 'sococo' do
  version '6.4.0-20586'
  sha256 '588a32a3bdd16edca4f8d00b9a5327cae0ebd467d0dd499497d41976c4edf872'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  app 'Sococo.app'
end

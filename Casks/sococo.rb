cask 'sococo' do
  version '6.5.0-20770'
  sha256 'f1e128fecd89b84f751234bea3f5c5b52e94eb0e333a9fda149efc397c1e39b8'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  app 'Sococo.app'
end

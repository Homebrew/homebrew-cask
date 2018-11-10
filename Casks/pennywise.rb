cask 'pennywise' do
  version '0.6.2'
  sha256 '60784ba566a1b5d3cf96066184396566835be9916280945797b9ede0c2394c82'

  url "https://github.com/kamranahmedse/pennywise/releases/download/v#{version}/Pennywise-#{version}.dmg"
  appcast 'https://github.com/kamranahmedse/pennywise/releases.atom'
  name 'Pennywise'
  homepage 'https://github.com/kamranahmedse/pennywise'

  app 'Pennywise.app'
end

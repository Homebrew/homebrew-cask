cask 'joplin' do
  version '0.10.28'
  sha256 '71a9dc3fb9041b803982458246ee14bf62e595e83738ead48c7b86e38bdf339d'

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  name 'Joplin'
  homepage 'https://github.com/laurent22/joplin/'

  app 'Joplin.app'
end

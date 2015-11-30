cask :v1 => 'endlesssky' do
  version '0.8.8'
  sha256 '0757c1b9c5ca7dc9e30a45d6b9b673a03b9296d48c543995013c67ff10179efe'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

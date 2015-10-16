cask :v1 => 'endlesssky' do
  version '0.8.4'
  sha256 'e98d1ff580fd69dfdc62a3e892bceabf76f52c1c830fdf1ef2f1c17ace04700d'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

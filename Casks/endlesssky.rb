cask :v1 => 'endlesssky' do
  version '0.8.2'
  sha256 '65ae266e629c17b46fa69593fdbb7b318620f4eb68085f135e63046dae6751ad'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

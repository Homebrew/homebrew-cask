cask :v1 => 'endlesssky' do
  version '0.8.3'
  sha256 'f3f96120d6222c8546986d39687af063924ec1bd64671ff54929a571361325f3'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

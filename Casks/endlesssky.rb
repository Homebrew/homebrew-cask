cask 'endlesssky' do
  version '0.8.9'
  sha256 'adb12878ba4bc97eae7fb387ecb206d297540a8cb21da793955c854781911cc0'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

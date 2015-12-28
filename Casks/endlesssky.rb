cask 'endlesssky' do
  version '0.8.9'
  sha256 'adb12878ba4bc97eae7fb387ecb206d297540a8cb21da793955c854781911cc0'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          :sha256 => 'a0de0f323e8945e33cbf3a06aab1f2b265db372480f5f2db92c93e479c63de02'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end

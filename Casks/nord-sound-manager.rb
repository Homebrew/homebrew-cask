cask 'nord-sound-manager' do
  version '7.42'
  sha256 'e40968744c318d6a1f55ed2882f7ad993daa59c0ae0b2c3d37070c36154f378c'

  url "https://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name 'Nord Sound Manager'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"
end

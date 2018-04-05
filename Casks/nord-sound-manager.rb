cask 'nord-sound-manager' do
  version '7.22'
  sha256 '22ba06fe910248e5683101e2d6ce34394a0d272859533f79cefc210cd594f99c'

  url "http://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name 'Nord Sound Manager'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"
end

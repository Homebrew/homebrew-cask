cask 'aseprite' do
  version '1.1.7'
  sha256 'fef4a425101e5d1fffa8b358d7f6b7aec1d9d377809a1cc544991d8699efe633'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'e7f3dbef66dc633e5a21cd7e6ddd61a6fe1ba19f8cf26e1c3c13eb136dfc71e2'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end

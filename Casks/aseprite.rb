cask 'aseprite' do
  version '1.1.5'
  sha256 '87bd504695112506f3ae721bb738dc2a12cf3b1ae6b8fff7d1af2ae0f1ce38f9'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'f8bf13cf8ebac35328644692f42b9c69a8d434fbcf772f90ee8ca258cef5541a'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end

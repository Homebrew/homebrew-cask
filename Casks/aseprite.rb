cask 'aseprite' do
  version '1.1.5.6'
  sha256 '8e177409221bec7587d823881ddd7706e99fc89eae85d319ab6c5abf0e0e29af'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'b4479716a52906161873b78c22b1e6c0033dbab076fb93630273d0ec108625c0'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end

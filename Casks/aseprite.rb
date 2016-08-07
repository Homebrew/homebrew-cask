cask 'aseprite' do
  version '1.1.6'
  sha256 'c1a0d7f528e1ea983285d489dc5bbea427c0ce8ad1500b67f694dee5eee0aef8'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '1e9e944cab4fb58b09cb79c903bf28e8939164de1593913c617ed62ce83a8d49'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end

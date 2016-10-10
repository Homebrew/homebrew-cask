cask 'aseprite' do
  version '1.1.9'
  sha256 'e76d7ceeab43625ceabbec7b3a3f81228a6855b68aa7835bea5677c92c38b4f5'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '7e03d1fbeebc1c82311546e9f1a53a98609b30576c452df60eed23cbc9c921e6'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'

  app 'Aseprite.app'
end

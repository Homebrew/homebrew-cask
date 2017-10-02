cask 'aseprite' do
  version '1.2.2'
  sha256 '4480a18ab761ef820004ac694f97f1d9f8ab5d444417f73516b4403c81de8572'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'dafdb5c5be66b887d2f88c6f764c13eefaef770fa03779099d875f76368401ce'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end

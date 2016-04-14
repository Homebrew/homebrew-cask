cask 'aseprite' do
  version '1.1.4'
  sha256 'c971a36e0a9adfc903a4da9848d26490b1a376d38e705406d085ad65e9179cc0'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '9405e281788928d998755856c7b7271577cc8e33fd07b9e65d779e27efe402d0'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end

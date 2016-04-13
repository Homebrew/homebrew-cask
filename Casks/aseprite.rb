cask 'aseprite' do
  version '1.1.4'
  sha256 'c971a36e0a9adfc903a4da9848d26490b1a376d38e705406d085ad65e9179cc0'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'c4e19d359cb6b40bf0eff40d39f527e6a942c8c5bc44f0f1c2b0639a838e68c1'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end

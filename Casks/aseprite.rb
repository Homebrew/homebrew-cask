cask 'aseprite' do
  version '1.1.1'
  sha256 '197b203968acb36210d15b7069b3fcfd8a4673dbbcb0eb9606e4ca95cd2afaba'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'c4e19d359cb6b40bf0eff40d39f527e6a942c8c5bc44f0f1c2b0639a838e68c1'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end

cask 'pester' do
  version '1.1b20'
  sha256 'da6dc523e6c1df281ba99a947e30a55c8b2fbacb51110f67bd5a504edf53317e'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          :sha256 => '169db8b6696e039e4aa660bacfa07a96640e21f95cb8c376a39861fc3faf274d'
  name 'Pester'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :bsd

  app 'Pester.app'
end

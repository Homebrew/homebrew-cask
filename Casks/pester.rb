cask :v1 => 'pester' do
  version '1.1b20'
  sha256 'da6dc523e6c1df281ba99a947e30a55c8b2fbacb51110f67bd5a504edf53317e'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          :sha256 => 'c9fdbf59afac8f0bdfd8daecb196155b8d194b199e906899ff17ab146b5fb4d5'
  name 'Pester'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pester.app'
end

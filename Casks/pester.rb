cask :v1 => 'pester' do
  version '1.1b19'
  sha256 'ad8a8b9affcab8a1e30753383062d4e5fb117e3601e3138abae59142130227d9'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          :sha256 => '05a547dabcb6df809f57695a38c88104b9d2df4ee290c7ba81b725af5bd1426f'
  name 'Pester'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pester.app'
end

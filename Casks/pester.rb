cask :v1 => 'pester' do
  version '1.1b18'
  sha256 '50cddd6fa813e5e2935e0e66ea13ee0605ada711c0141498a4d19c93eb554c86'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          :sha256 => '05a547dabcb6df809f57695a38c88104b9d2df4ee290c7ba81b725af5bd1426f'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :unknown    # todo: improve this machine-generated value

  app 'Pester.app'
end

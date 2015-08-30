cask :v1 => 'e-tax2015' do
  version '1'
  sha256 'e698608c9938b77338f2aee7ac98afb0001ad40dbfdc2c4e551e98aaebf4dfc6'

  url "https://www.ato.gov.au/misc/downloads/managed/etaxswap/etax2015_#{version}.dmg"
  name 'e-tax2015'
  homepage 'https://www.ato.gov.au/printfriendly.aspx?url=/Individuals/Ind/Downloading-and-installing-e-tax/'
  license :gratis

  pkg 'etax2015_1.pkg'

  uninstall :pkgutil => 'au.gov.ato.etax2015'
end

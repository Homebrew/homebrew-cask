cask :v1 => 'e-tax2014' do
  version '1'
  sha256 '740410f77b0a41f4666293ecd5b0d6cb9a824ac56c2673ae2ed1b8fcf4ad8af1'

  url "https://www.ato.gov.au/misc/downloads/etax2014/etax2014_#{version}.dmg"
  homepage 'https://www.ato.gov.au/individuals/lodging-your-tax-return/lodge-online/e-tax/downloading-and-installing-e-tax/#Mac'
  license :unknown    # todo: improve this machine-generated value

  pkg 'etax2014_1.pkg'

  uninstall :pkgutil => 'au.gov.ato.etax2014'
end
